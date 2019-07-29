#include "motor.h"
#if 1
void Motor_TIM4_PWM_Init(u16 arr,u16 psc)
{		 
  RCC->APB1ENR|=1<<2;       //TIM4时钟使能    
	RCC->APB2ENR|=1<<3;       //PORTB时钟使能   6 7作为驱动器输入 ？？？？ PB6 -> BIN1 PB7 -> BIN2
	GPIOB->CRL&=0X00FFFFFF;   //PORTB6 7  8 9推挽输出  
	GPIOB->CRL|=0XBB000000;   //PORTB6 7  8 9推挽输出	 
	GPIOB->CRH&=0XFFFFFF00;   //PORTB6 7  8 9推挽输出
	GPIOB->CRH|=0X000000BB;   //PORTB6 7  8 9推挽输出
	
	TIM4->ARR=arr;//设定计数器自动重装值 
	TIM4->PSC=psc;//预分频器不分频
	TIM4->CCMR1|=6<<4;//CH1 PWM1模式	
	TIM4->CCMR1|=6<<12; //CH2 PWM1模式	
	TIM4->CCMR2|=6<<4;//CH3 PWM1模式	
	TIM4->CCMR2|=6<<12; //CH4 PWM1模式	
	
	TIM4->CCMR1|=1<<3; //CH1预装载使能	  
	TIM4->CCMR1|=1<<11;//CH2预装载使能	 
	TIM4->CCMR2|=1<<3; //CH3预装载使能	  
	TIM4->CCMR2|=1<<11;//CH4预装载使能	 
	TIM4->CCER|=1<<0;  //CH1输出使能	
	TIM4->CCER|=1<<4;  //CH2输出使能	   
	TIM4->CCER|=1<<8;  //CH3输出使能	
	TIM4->CCER|=1<<12; //CH4输出使能	   
	TIM4->CR1=0x80;  //ARPE使能 
	TIM4->CR1|=0x01;   //使能定时器 							 
} 
#endif
#if 0
void Motor_PWM_Init(u16 arr,u16 psc)  //PA2 PA3 PB0 PB1
{		 
	//RCC->APB2ENR|=1<<11;       //使能TIM1时钟 
	RCC->APB1ENR|=1<<0; 	    //使能TIM2时钟
	RCC->APB1ENR|=1<<1;	      //使能TIM3时钟
	RCC->APB2ENR|=1<<3;       //PORTB时钟使能 
	RCC->APB2ENR|=1<<2;        //PORTA时钟使能  

	GPIOB->CRL&=0XFFFFFF00;         //PORTB0 1 推挽输出  TIM3_CH3 TIM3_CH4
	GPIOB->CRL|=0X000000BB;					//PORTB0 1 推挽输出
//	GPIOB->ODR|=1<<0; //PB0 输出高
//	GPIOB->ODR|=1<<1; //PB1 输出高
	
	GPIOA->CRL&=0XFFFF00FF;   //PORTA2 3推挽输出  TIM2_CH3 TIM2_CH4
	GPIOA->CRL|=0X0000BB00;   //PORTA2 3推挽输出 
//	GPIOA->ODR|=1<<2; //PA2 输出高
//	GPIOA->ODR|=1<<3; //PA3 输出高
	
	TIM2->ARR=arr;             //设定计数器自动重装值 
	TIM2->PSC=psc;             //预分频器不分频
	TIM3->ARR=arr;             //设定计数器自动重装值 
	TIM3->PSC=psc;             //预分频器不分频
	
	
	TIM2->CCMR2|=6<<4;   	//CH3 PWM1模式
	TIM2->CCMR2|=6<<12;   //CH4 PWM1模式
	TIM2->CCMR2|=1<<3;		//CH3预装载使能
	TIM2->CCMR2|=1<<11;		//CH4预装载使能
	TIM2->CCER|=1<<8;			//CH3输出使能
	TIM2->CCER|=1<<12;		//CH4输出使能
	
	TIM3->CCMR2|=6<<4;    //CH3 PWM1模式
	TIM3->CCMR2|=6<<12;		//CH4 PWM1模式
	TIM3->CCMR2|=1<<3;		//CH3预装载使能
	TIM3->CCMR2|=1<<11;		//CH4预装载使能
	TIM3->CCER|=1<<8;			//CH3输出使能
	TIM3->CCER|=1<<12;		//CH4输出使能
	
	TIM2->CR1 = 0x80;           //ARPE使能 
	TIM2->CR1|=0x01;          //使能定时器2
	
	TIM3->CR1 = 0x80;           //ARPE使能 
	TIM3->CR1|=0x01;          //使能定时器3 
	/*
	TIM1->CCMR1|=6<<4;//CH1 PWM1模式	
	TIM1->CCMR1|=6<<12; //CH1N PWM1模式	
	TIM1->CCMR2|=6<<4;//CH2N PWM1模式	
	TIM1->CCMR2|=6<<12; //CH3N PWM1模式	
	
	TIM4->CCMR1|=6<<4;//CH1 PWM1模式	
	TIM4->CCMR1|=6<<12; //CH2 PWM1模式	
	TIM4->CCMR2|=6<<4;//CH3 PWM1模式	
	TIM4->CCMR2|=6<<12; //CH4 PWM1模式	
	
	TIM4->CCMR1|=1<<3; //CH1预装载使能	  
	TIM4->CCMR1|=1<<11;//CH2预装载使能	 
	TIM4->CCMR2|=1<<3; //CH3预装载使能	  
	TIM4->CCMR2|=1<<11;//CH4预装载使能	 
	TIM4->CCER|=1<<0;  //CH1输出使能	
	TIM4->CCER|=1<<4;  //CH2输出使能	   
	TIM4->CCER|=1<<8;  //CH3输出使能	
	TIM4->CCER|=1<<12; //CH4输出使能	   
  TIM1->CR1 = 0x80;           //ARPE使能 
	TIM1->CR1|=0x01;          //使能定时器1 	
*/	
} 
#endif
#if 1
void Motor_TIM1_PWM_Init(u16 arr,u16 psc) //PA11 PA8
{
	RCC->APB2ENR|=1<<11;       //使能TIM1时钟    
	RCC->APB2ENR|=1<<2;        //PORTA时钟使能 
	
	GPIOA->CRH&=0XFFFFFFF0;    //PORTA8复用输出
	GPIOA->CRH|=0X0000000B;    //PORTA8复用输出	
	GPIOA->CRH&=0XFFFF0FFF;    //PORTA11复用输出
	GPIOA->CRH|=0X0000B000;    //PORTA11复用输出
	TIM1->ARR=arr;             //设定计数器自动重装值 
	TIM1->PSC=psc;             //预分频器不分频
	
	TIM1->CCMR1|=6<<4;        //CH1 PWM1模式	
	TIM1->CCMR1|=1<<3;        //CH1预装载使能	
	TIM1->CCER|=1<<0;         //CH1输出使能	
	
	TIM1->CCMR2|=6<<12;        //CH4 PWM1模式	
	TIM1->CCMR2|=1<<11;        //CH4预装载使能	   
	TIM1->CCER|=1<<12;         //CH4输出使能	   
  TIM1->BDTR |= 1<<15;       //TIM1必须要这句话才能输出PWM
	TIM1->CR1 = 0x80;          //ARPE使能 
	TIM1->CR1|=0x01;           //使能定时器1 		
	TIM1->CCR1=0;
  TIM1->CCR4=0;	
		
}


#endif

/**************************************************************************
函数功能：舵机PWM初始化
入口参数：入口参数：arr：自动重装值  psc：时钟预分频数 
返回  值：无
**************************************************************************/
#if 0
void Servo_PWM_Init(u16 arr,u16 psc)	
{	 
	RCC->APB2ENR|=1<<11;       //使能TIM1时钟    
	RCC->APB2ENR|=1<<2;        //PORTA时钟使能 
	GPIOA->CRH&=0XFFFF0FFF;    //PORTA11复用输出
	GPIOA->CRH|=0X0000B000;    //PORTA11复用输出
	TIM1->ARR=arr;             //设定计数器自动重装值 
	TIM1->PSC=psc;             //预分频器不分频
	TIM1->CCMR2|=6<<12;        //CH4 PWM1模式	
	TIM1->CCMR2|=1<<11;        //CH4预装载使能	   
	TIM1->CCER|=1<<12;         //CH4输出使能	   
  TIM1->BDTR |= 1<<15;       //TIM1必须要这句话才能输出PWM
	TIM1->CR1 = 0x80;          //ARPE使能 
	TIM1->CR1|=0x01;           //使能定时器1 		
  TIM1->CCR4=0;	
}
#endif
