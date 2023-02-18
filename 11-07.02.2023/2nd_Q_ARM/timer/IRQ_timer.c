/*********************************************************************************************************
**--------------File Info---------------------------------------------------------------------------------
** File name:           IRQ_timer.c
** Descriptions:        interrupt handlers of Timer/Counter 0 and 1
** Correlated files:    timer.h
**--------------------------------------------------------------------------------------------------------
*********************************************************************************************************/
#include "LPC17xx.h"
#include "timer.h"

void TIMER0_IRQHandler (void)
{
  LPC_TIM0->IR = 1;			/* clear interrupt flag */
  return;
}

void TIMER1_IRQHandler (void)
{
  LPC_TIM1->IR = 1;			/* clear interrupt flag */
  return;
}
int getTimer(void){
	int temp= LPC_TIM0->TC;
	return temp;
}


