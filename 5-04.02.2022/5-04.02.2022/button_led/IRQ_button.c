#include "button.h"
#include "LPC17xx.h"
#include "led.h"

int number = 0;
int counter = 0;

void EINT0_IRQHandler (void)	  
{

  LPC_SC->EXTINT |= (1 << 0);     /* clear pending interrupt         */
	int result;
	result 	= nonRestoringSquareRoot(number, counter);
	led_output(result);
}

void EINT1_IRQHandler (void)	  
{
	
	LPC_SC->EXTINT |= (1 << 1);     /* clear pending interrupt         */
	
	number <<= 1;
	counter++;
}

void EINT2_IRQHandler (void)	  
{
	
  LPC_SC->EXTINT |= (1 << 2);     /* clear pending interrupt         */    
	number <<= 1;
	number |= 1;
	counter++;
}
