#include "button.h"
#include "lpc17xx.h"

extern int result;
void startSysTickTimer (void);
extern int stopSysTickTimer (void);

void EINT0_IRQHandler (void)	  
{
	LPC_SC->EXTINT |= (1 << 0);     /* clear pending interrupt 	*/
	
}


void EINT1_IRQHandler (void)	  
{
	LPC_SC->EXTINT |= (1 << 1);     /* clear pending interrupt 	*/
	startSysTickTimer();
}

void EINT2_IRQHandler (void)	  
{
 	LPC_SC->EXTINT |= (1 << 2);     /* clear pending interrupt*/


	result	= stopSysTickTimer();
}


