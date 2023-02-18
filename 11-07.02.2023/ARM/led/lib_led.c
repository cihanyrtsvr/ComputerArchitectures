/*********************************************************************************************************
**--------------File Info---------------------------------------------------------------------------------
** File name:           lib_led.c
** Descriptions:        Atomic led init functions    
**--------------------------------------------------------------------------------------------------------       
*********************************************************************************************************/
#include "LPC17xx.h"
#include "led.h"

/*----------------------------------------------------------------------------
  Function that initializes LEDs
 *----------------------------------------------------------------------------*/

void LED_init(void)
{
	LPC_PINCON->PINSEL4 &= 0xFFFF0000;	// PIN mode GPIO: P2.0-P2.7 are set to zero
	LPC_GPIO2->FIODIR |= 0x000000FF;	// P2.0-P2.7 on PORT2 defined as Output
}

void LED_deinit(void)
{
	LPC_GPIO2->FIODIR &= 0xFFFFFF00;
}


