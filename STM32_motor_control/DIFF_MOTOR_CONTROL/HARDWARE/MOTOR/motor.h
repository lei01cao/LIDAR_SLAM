#ifndef __MOTOR_H
#define __MOTOR_H
#include <sys.h>	 


/*
#define PWMA1   TIM2->CCR3   // PA2 PA3
#define PWMA2   TIM2->CCR4   

#define PWMB1   TIM3->CCR3   // PB0 PB1
#define PWMB2   TIM3->CCR4   
*/
#define PWMA1   TIM4->CCR1  //PA6
#define PWMA2   TIM4->CCR2  //PA7

#define PWMB1   TIM4->CCR3   //PB8 
#define PWMB2   TIM4->CCR4  //PB9 

/*
#define PWMA1   TIM4->CCR1  
#define PWMA2   TIM4->CCR2 

#define PWMB1   TIM4->CCR3  
#define PWMB2   TIM4->CCR4

#define SERVO   TIM1->CCR4  //¶æ»úÒý½Å 
*/
void Motor_TIM1_PWM_Init(u16 arr,u16 psc);
void Motor_TIM4_PWM_Init(u16 arr,u16 psc);
//void Servo_PWM_Init(u16 arr,u16 psc);
#endif
