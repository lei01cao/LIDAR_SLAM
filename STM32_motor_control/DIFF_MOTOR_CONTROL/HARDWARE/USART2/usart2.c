
#include "usart2.h"
uint8_t USART_SEND_Buffer[9];
uint8_t USART_RCV_Buffer[USARTBufferSize];
uint8_t USARTzRxBufferD[USARTBufferSize];

send_data com_2_send_data;//串口发送数据
rcv_data com_2_rcv_data;  //串口接收数据
void usart2_send(u8 data)
{
	USART2->DR = data;
	while((USART2->SR&0x40)==0);	
}
/**************************************************************************
函数功能：串口2初始化
入口参数：pclk2:PCLK2 时钟频率(Mhz)    bound:波特率
返回  值：无
**************************************************************************/
void uart2_init(u32 pclk2,u32 bound)
{  	 
	float temp;
	u16 mantissa;
	u16 fraction;	   
	temp=(float)(pclk2*1000000)/(bound*16);//得到USARTDIV
	mantissa=temp;				 //得到整数部分
	fraction=(temp-mantissa)*16; //得到小数部分	 
  mantissa<<=4;
	mantissa+=fraction; 
	RCC->APB2ENR|=1<<2;   //使能PORTA口时钟  
	RCC->APB1ENR|=1<<17;  //使能串口时钟 
	GPIOA->CRL&=0XFFFF00FF; 
	GPIOA->CRL|=0X00008B00;//IO状态设置
	GPIOA->ODR|=1<<10;	  
	RCC->APB1RSTR|=1<<18;   //复位串口1
	RCC->APB1RSTR&=~(1<<18);//停止复位	   	   
	//波特率设置
 	USART2->BRR=mantissa; // 波特率设置	 
	USART2->CR1|=0X200C;  //1位停止,无校验位.
	//使能接收中断
	USART2->CR1|=1<<8;    //PE中断使能
	USART2->CR1|=1<<5;    //接收缓冲区非空中断使能	    	
	MY_NVIC_Init(0,1,USART2_IRQn,2);//组2，最低优先级 
}


/**************************************************************************
函数功能：串口2接收中断
入口参数：无
返回  值：无
**************************************************************************/
int USART2_IRQHandler(void)
{	
	if(USART2->SR&(1<<5))//接收到数据
	{	      
				u8 temp;
				static u8 count,last_data,last_last_data;
				temp=USART2->DR;
				   if(Usart_Flag==0)
						{	
						if(last_data==0xfe&&last_last_data==0xff) 
						Usart_Flag=1,count=0;	
						}
					 if(Usart_Flag==1)
						{	
							Urxbuf[count]=temp;     
							count++;                
							if(count==4)Usart_Flag=0;
						}
						last_last_data=last_data;
						last_data=temp;
   }
return 0;	
}
unsigned char getCrc8(unsigned char *ptr, unsigned short len)
{
	unsigned char crc;
	unsigned char i;
	crc = 0;
	while(len--)
	{
		crc ^= *ptr++;
		for(i = 0; i < 8; i++)
		{
			if(crc&0x01)
                crc=(crc>>1)^0x8C;
			else 
                crc >>= 1;
		}
	}
	return crc;
}
/**************************************************************************
函数功能：odom数据组包通过串口发送
入口参数：无
返回  值：无
**************************************************************************/
void odom_pack_serial_send(void)
{
		float v_left, v_right, d_left, d_right;
	
		/*5ms编码器计数换算左右轮移动距离*/
		d_left = (-Encoder_Left * pi * r) / 780.0; //左轮移动距离
		d_right = (Encoder_Right * pi * r) / 780.0;  //右轮移动距离
		v_left = d_left / 0.01; 
		v_right = d_right / 0.01;
	
		/* 左轮 右轮速度发送 */
		com_2_send_data.v_left.fv = v_left;//x坐标  
		com_2_send_data.v_right.fv = v_right;//y坐标
		//printf("v_left = %f", v_left);
		//printf("\tv_right = %f\n", v_right);

		USART_SEND_Buffer[0] = com_2_send_data.v_left.cv[0];
		USART_SEND_Buffer[1] = com_2_send_data.v_left.cv[1];
		USART_SEND_Buffer[2] = com_2_send_data.v_left.cv[2];
		USART_SEND_Buffer[3] = com_2_send_data.v_left.cv[3];
		USART_SEND_Buffer[4] = com_2_send_data.v_right.cv[0];
		USART_SEND_Buffer[5] = com_2_send_data.v_right.cv[1];
		USART_SEND_Buffer[6] = com_2_send_data.v_right.cv[2];
		USART_SEND_Buffer[7] = com_2_send_data.v_right.cv[3];
		USART_SEND_Buffer[8] = getCrc8(USART_SEND_Buffer,8);

		//左轮右轮速度数据包发送
		usart1_send(USART_SEND_Buffer, 9);
		
		//清零
    memset(USART_SEND_Buffer,0 ,sizeof(USART_SEND_Buffer));	
		memset(&com_2_send_data,0 ,sizeof(com_2_send_data));
}

//数据校验解包
uint32_t unpack_cmd_vel_data(uint8_t	*pdata)
{
	uint8_t v_left,v_right,dir_left,dir_right;
	uint32_t ret=0;
	int8_t	crc = 0;
	int8_t  p_crc = 0;
	if((*(pdata + 0) == 0xff) && (*(pdata + 1) == 0xff)){
		crc = (*(pdata + 2))^(*(pdata + 3))^(*(pdata + 4))^(*(pdata + 5))^(*(pdata + 6))^(*(pdata + 7))^(*(pdata + 8))^(*(pdata + 9))^(*(pdata + 10))^(*(pdata + 11))^(*(pdata + 12))^(*(pdata + 13));
		p_crc = (int8_t)(*(pdata + 14));//不进行类型转换，负数不正常
	}
	else{
		ret = -1;
		return ret;
	}
	if(p_crc != crc ){//校验和分析有误
		ret = -1;
		return ret;
	}
	//数据包分析正确，提取数据
	memset(&com_2_rcv_data,0,sizeof(com_2_rcv_data));
	com_2_rcv_data.linear_vx.cv[0] = *(pdata + 2);
	com_2_rcv_data.linear_vx.cv[1] = *(pdata + 3);
	com_2_rcv_data.linear_vx.cv[2] = *(pdata + 4);
	com_2_rcv_data.linear_vx.cv[3] = *(pdata + 5);
	
	com_2_rcv_data.linear_vy.cv[0] = *(pdata + 6);
	com_2_rcv_data.linear_vy.cv[1] = *(pdata + 7);
	com_2_rcv_data.linear_vy.cv[2] = *(pdata + 8);
	com_2_rcv_data.linear_vy.cv[3] = *(pdata + 9);
	
	com_2_rcv_data.angular_v.cv[0] = *(pdata + 10);
	com_2_rcv_data.angular_v.cv[1] = *(pdata + 11);
	com_2_rcv_data.angular_v.cv[2] = *(pdata + 12);
	com_2_rcv_data.angular_v.cv[3] = *(pdata + 13);
	ret = v_left << 24 | dir_left << 16 | v_right << 8 | dir_right;
	return ret;  //转换成左轮速度方向  右轮速度方向
}


