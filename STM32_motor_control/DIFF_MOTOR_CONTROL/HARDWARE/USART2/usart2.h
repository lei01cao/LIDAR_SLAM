#ifndef __USRAT2_H
#define __USRAT2_H 
#include "sys.h"	  	
#define USARTBufferSize   64
//浮点数和HEX快速获取
typedef union{
	float fv;
	uint8_t cv[4];
}float_union;

//接收数据结构
typedef	struct{

		float_union		linear_vx;//线速度x
		float_union		linear_vy;//线速度y
		float_union		angular_v;//角速度
		
}rcv_data;

//发送数据结构
typedef	struct{
		
		float_union	v_left;//左轮速度
		float_union	v_right;//右轮速度
//		float_union	x_v;//x方向速度
//		float_union	y_v;//y方向速度
//		float_union	angular_v;//角速度
//		float_union	pose_angular;//角度
	
}send_data;
unsigned char getCrc8(unsigned char *ptr, unsigned short len);
void usart2_send(u8 data);
void uart2_init(u32 pclk2,u32 bound);
int USART2_IRQHandler(void);
void odom_pack_serial_send(void); //发送里程计数据
uint32_t unpack_cmd_vel_data(uint8_t	*pdata);//接收数据分析 cmd_vel ->  V左轮  V右轮
#endif

