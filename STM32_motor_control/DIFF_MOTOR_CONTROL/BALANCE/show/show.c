#include "show.h"
unsigned char i;          //计数变量
unsigned char Send_Count; //串口需要发送的数据个数
float Vol;
/**************************************************************************
函数功能：OLED显示
入口参数：无
返回  值：无
**************************************************************************/
void oled_show(void)
{ 
	
			              	    OLED_ShowString(00,10,"RX"),
		                      OLED_ShowNumber(20,10,rxbuf[0],3,12);
													OLED_ShowNumber(45,10,rxbuf[1],3,12);
													OLED_ShowNumber(70,10,rxbuf[2],3,12);
													OLED_ShowNumber(105,10,rxbuf[3],3,12);
			
				                  OLED_ShowString(00,20,"LT");
		if(Target_A<0)	      OLED_ShowString(20,20,"-"),
		                      OLED_ShowNumber(35,20,-Target_A,3,12);
		else               		OLED_ShowString(20,20,"+"),
		                      OLED_ShowNumber(35,20,Target_A,3,12);	

		                      OLED_ShowString(60,20,"LV");
		if(Encoder_Left<0)	  OLED_ShowString(80,20,"-"),
		                      OLED_ShowNumber(95,20,-Encoder_Left,3,12);
		else               		OLED_ShowString(80,20,"+"),
		                      OLED_ShowNumber(95,20,Encoder_Left,3,12);	

		
				                  OLED_ShowString(00,30,"RT");
		if(Target_B<0)	      OLED_ShowString(20,30,"-"),
		                      OLED_ShowNumber(35,30,-Target_B,3,12);
		else               		OLED_ShowString(20,30,"+"),
		                      OLED_ShowNumber(35,30,Target_B,3,12);	

		                      OLED_ShowString(60,30,"RV");
		if(Encoder_Right<0)	  OLED_ShowString(80,30,"-"),
		                      OLED_ShowNumber(95,30,-Encoder_Right,3,12);
		else               		OLED_ShowString(80,30,"+"),
		                      OLED_ShowNumber(95,30,Encoder_Right,3,12);	


		                      OLED_ShowString(00,40,"VOLTAGE");
		                      OLED_ShowString(68,40,".");
		                      OLED_ShowString(90,40,"V");
		                      OLED_ShowNumber(55,40,Voltage/100,2,12);
		                      OLED_ShowNumber(78,40,Voltage%100,2,12);
		 if(Voltage%100<10) 	OLED_ShowNumber(72,40,0,2,12);
		                    
													OLED_ShowString(00,50,"Motor");
													if(Flag_Stop==0)	OLED_ShowString(50,50,"O-N");
													if(Flag_Stop==1)	OLED_ShowString(50,50,"OFF");
		

		//=============刷新=======================//
		OLED_Refresh_Gram();	
	}

