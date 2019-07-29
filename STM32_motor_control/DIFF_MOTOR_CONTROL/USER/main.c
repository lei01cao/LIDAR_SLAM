#include "sys.h"
u8 Flag_Way=0,Flag_Show=0,Flag_Stop=1;                 //停止标志位和 显示标志位 默认停止 显示打开
int Encoder_Left,Encoder_Right;             //左右编码器的脉冲计数
float th; //偏航角
float Velocity,Velocity_Set,Turn,Angle_Set;
int Motor_A,Motor_B,Target_A,Target_B;  //电机舵机控制相关           
int Voltage;                                //电池电压采样相关的变量
float Velocity_KP=62,Velocity_KI=62;	       //速度控制PID参数
u8 Urxbuf[4],rxbuf[4],Usart_Flag;
u8 dir = 1;
u16 pwmvalA1 = 0;
u16 pwmvalA2 = 0;
u16 pwmvalB1 = 0;
u16 pwmvalB2 = 0;
int main(void)
{ 
	int ua_Encoder,ub_Encoder;
	Stm32_Clock_Init(9);            //=====系统时钟设置
	delay_init(72);                 //=====延时初始化
	JTAG_Set(JTAG_SWD_ENABLE);      //=====关闭JTAG接口
	LED_Init();                     //=====初始化与 LED 连接的硬件接口
	KEY_Init();                     //=====按键初始化
	Encoder_Init_TIM2();            //=====编码器接口
	Encoder_Init_TIM3();            //=====初始化编码器 
	delay_ms(300);                  //=====延时启动
	uart_init(72,9600);           //=====初始化串口1
  //Motor_TIM1_PWM_Init(7199,0);  				//=====初始化PWM 10KHZ，用于驱动电机 
	Motor_TIM4_PWM_Init(7199,0);
	//Adc_Init();                     //=====电池电压采样adc初始化
	uart2_init(36,115200); 				  //=====串口3初始化 蓝牙
	Timer_Init(49,7199);            //=====定时中断初始化 
	while(1)
	{   	  
				/*           测试          */
				//PWMA1=0,PWMA2=6000;  //右电机
				//PWMB1=5000,PWMB2=7200;  //左电机
				
//				pwmvalA1 = PWMA1;
//				pwmvalA2 = PWMA2;
//		    printf("PWMA1 = %d\n",pwmvalA1);
//				printf("PWMA2 = %d\n",pwmvalA2);
//				printf("=======================\n");
//				pwmvalB1 = PWMB1;
//				pwmvalB2 = PWMB2;
//		    printf("PWMB1 = %d\n",pwmvalB1);
//				printf("PWMB2 = %d\n",pwmvalB2);				
//				printf("\n\r-----------odom数据组包串口发送--------------\n ");
				delay_ms(100);
				odom_pack_serial_send();
	}
}
