#ifndef __ENCODER_H
#define __ENCODER_H
#include <sys.h>	 
#define ENCODER_TIM_PERIOD (u16)(65535)   //不可大于65535 因为F103的定时器是16位的。
#define pi 3.1416
#define r 0.0325
extern float th;
void Encoder_Init_TIM2(void);
void Encoder_Init_TIM3(void);
int Read_Encoder(u8 TIMX);
void EXTI1_IRQHandler(void);
void EXTI0_IRQHandler(void);
#endif
