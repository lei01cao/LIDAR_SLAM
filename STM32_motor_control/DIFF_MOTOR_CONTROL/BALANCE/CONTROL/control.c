#include "control.h"	
#define T 0.156f
#define L 0.1445f
#define K 311.4f
u8 Flag_Target;
int Voltage_Temp,Voltage_Count,Voltage_All,sum;
/**************************************************************************
函数功能：所有的控制代码都在这里面
         5ms定时中断由MPU6050的INT引脚触发
         严格保证采样和数据处理的时间同步				 
**************************************************************************/

void TIM1_UP_IRQHandler(void)  
{    
	if(TIM1->SR&0X0001)//定时中断
	{   
		  TIM1->SR&=~(1<<0);             //===清除定时器中断标志位	       
		  Flag_Target=!Flag_Target;
				if(Flag_Target==1)                                                  
				{
					if(Usart_Flag==0)  memcpy(rxbuf,Urxbuf,4*sizeof(u8));	//接收完成
					 Usart_Control();                              //===接收串口控制指令
					 Key();                                       //===扫描按键状态 单击双击可以改变小车运行状态
					 //Voltage_Temp=Get_battery_volt();		                                 //=====读取电池电压		
				 	 //Voltage_Count++;                                                     //=====平均值计数器
					// Voltage_All+=Voltage_Temp;                                           //=====多次采样累积
					// if(Voltage_Count==100) Voltage=Voltage_All/100,Voltage_All=0,Voltage_Count=0;//=====求平均值	
				}
			 	
				
			 if(Flag_Target==0) 
			 //if(0)
			 { 
						//Encoder_Right=Read_Encoder(2);
						Encoder_Left=Read_Encoder(2);                                       //===读取编码器的值							 //为了保证M法测速的时间基准，首先读取编码器数据
						Encoder_Right=-Read_Encoder(3);                                       //===读取编码器的值
						//if(Turn_Off(Voltage)==0)                              							 //===如果不存在异常
						if(1)
						{	
							Motor_A=Incremental_PI_A(Encoder_Left,Target_A);                   //===速度闭环控制计算电机A最终PWM
							Motor_B=Incremental_PI_B(Encoder_Right,Target_B);                  //===速度闭环控制计算电机B最终PWM 
							Xianfu_Pwm();                                                      //===PWM限幅
							Set_Pwm(Motor_A,Motor_B);                                 	 //===赋值给PWM寄存器  
						}
						else
						Set_Pwm(0,0);                                 						 //===赋值给PWM寄存器  	                               
			 }   
		/* 中断闪烁灯 */
		 if(Flag_Show==0)				
			 Led_Flash(100);
		 else if(Flag_Show==1)	
			 Led_Flash(0);
	}		 
} 


/**************************************************************************
函数功能：赋值给PWM寄存器
入口参数：左轮PWM、右轮PWM
返回  值：无
**************************************************************************/
void Set_Pwm(int motor_a,int motor_b)
{
    	if(motor_a<0)			
				PWMA1=7200,PWMA2=7200+motor_a;
			else 	            
				PWMA2=7200,PWMA1=7200-motor_a;
		
		  if(motor_b<0)			
				PWMB1=7200,PWMB2=7200+motor_b;
			else 	            
				PWMB2=7200,PWMB1=7200-motor_b;
}

/**************************************************************************
函数功能：限制PWM赋值 
入口参数：无
返回  值：无
**************************************************************************/
void Xianfu_Pwm(void)
{	
	  int Amplitude=6900;    //===PWM满幅是7200 限制在6900
    if(Motor_A<-Amplitude) Motor_A=-Amplitude;	
		if(Motor_A>Amplitude)  Motor_A=Amplitude;	
	  if(Motor_B<-Amplitude) Motor_B=-Amplitude;	
		if(Motor_B>Amplitude)  Motor_B=Amplitude;		
}
/**************************************************************************
函数功能：按键修改小车运行状态 
入口参数：无
返回  值：无
**************************************************************************/
void Key(void)
{	
	u8 tmp,tmp2;
	tmp=click_N_Double(50); 
	if(tmp==1)Flag_Stop=!Flag_Stop;//单击控制小车的启停
	if(tmp==2)Flag_Show=!Flag_Show;//双击控制小车的显示状态
	//tmp2=Long_Press();          
  //if(tmp2==1)Flag_Show=!Flag_Show;//控制小车的显示状态
}

/**************************************************************************
函数功能：异常关闭电机
入口参数：电压
返回  值：1：异常  0：正常
**************************************************************************/
u8 Turn_Off( int voltage)
{
	    u8 temp;
			if(voltage<740||Flag_Stop==1)//电池电压低于7.4V关闭电机
			{	                                                
      temp=1;                                            
      }
			else
      temp=0;
      return temp;			
}
/**************************************************************************
函数功能：绝对值函数
入口参数：int
返回  值：unsigned int
**************************************************************************/
int myabs(int a)
{ 		   
	  int temp;
		if(a<0)  temp=-a;  
	  else temp=a;
	  return temp;
}
/**************************************************************************
函数功能：增量PI控制器
入口参数：编码器测量值，目标速度
返回  值：电机PWM
根据增量式离散PID公式 
pwm+=Kp[e（k）-e(k-1)]+Ki*e(k)+Kd[e(k)-2e(k-1)+e(k-2)]
e(k)代表本次偏差 
e(k-1)代表上一次的偏差  以此类推 
pwm代表增量输出
在我们的速度控制闭环系统里面，只使用PI控制
pwm+=Kp[e（k）-e(k-1)]+Ki*e(k)
**************************************************************************/
int Incremental_PI_A (int Encoder,int Target)
{ 	
	 static int Bias,Pwm,Last_bias;
	 Bias=Target-Encoder;                //计算偏差
	 Pwm+=Velocity_KP*(Bias-Last_bias)+Velocity_KI*Bias;   //增量式PI控制器
	 Last_bias=Bias;	                   //保存上一次偏差 
	 return Pwm;                         //增量输出
}
int Incremental_PI_B (int Encoder,int Target)
{ 	
	 static int Bias,Pwm,Last_bias;
	 Bias=Target-Encoder;                //计算偏差
	 Pwm+=Velocity_KP*(Bias-Last_bias)+Velocity_KI*Bias;   //增量式PI控制器
	 Last_bias=Bias;	                   //保存上一次偏差 
	 return Pwm;                         //增量输出
}

/**************************************************************************
函数功能：接收 串口控制指令进行处理
入口参数：无
返回  值：无
**************************************************************************/
void Usart_Control(void)
{
	 int flag_left, flag_right;
	 
	 if(rxbuf[1])flag_left=1;   else flag_left=-1;  //方向控制位
	 if(rxbuf[3])flag_right=1;  else flag_right=-1;  //方向控制位
	 Target_A=flag_left*rxbuf[0];
	 Target_B=flag_right*rxbuf[2];

	 /*
	 pwmval = rxbuf[0];
	 Target_A=1*0x34;
	 Target_B=-1*0x15;
	*/
}
