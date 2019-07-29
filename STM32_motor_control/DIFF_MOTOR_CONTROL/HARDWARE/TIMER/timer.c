#include "timer.h"

/**************************************************************************
函数功能：定时中断初始化
入口参数：arr：自动重装值  psc：时钟预分频数 
返回  值：无
**************************************************************************/
void Timer_Init(u16 arr,u16 psc)  
{  

	RCC->APB2ENR|=1<<11;//TIM1时钟使能    
 	TIM1->ARR=arr;      //设定计数器自动重装值   
	TIM1->PSC=psc;      //预分频器7200,得到10Khz的计数时钟
	TIM1->DIER|=1<<0;   //允许更新中断				
	TIM1->DIER|=1<<6;   //允许触发中断	   
	TIM1->CR1|=0x01;    //使能定时器
	MY_NVIC_Init(1,3,TIM1_UP_IRQn,2);
	/*
	RCC->APB2ENR|=1<<0;//TIM2时钟使能    
 	TIM2->ARR=arr;      //设定计数器自动重装值   
	TIM2->PSC=psc;      //预分频器7200,得到10Khz的计数时钟
	TIM2->DIER|=1<<0;   //允许更新中断				
	TIM2->DIER|=1<<6;   //允许触发中断	   
	TIM2->CR1|=0x01;    //使能定时器
	MY_NVIC_Init(1,3,TIM2_IRQn,2);
	
	RCC->APB2ENR|=1<<1;//TIM3时钟使能    
 	TIM3->ARR=arr;      //设定计数器自动重装值   
	TIM3->PSC=psc;      //预分频器7200,得到10Khz的计数时钟
	TIM3->DIER|=1<<0;   //允许更新中断				
	TIM3->DIER|=1<<6;   //允许触发中断	   
	TIM3->CR1|=0x01;    //使能定时器
	//MY_NVIC_Init(1,3,TIM3_IRQn,2);
	*/
}  
