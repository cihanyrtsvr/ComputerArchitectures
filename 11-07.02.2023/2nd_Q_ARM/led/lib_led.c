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

void ON5(void){

	LPC_GPIO2->FIOCLR=0x1;
	LPC_GPIO2->FIOSET=0x2;
}
void ON4(void){

	LPC_GPIO2->FIOCLR=0x2;
	LPC_GPIO2->FIOSET=0x1;
}

void OFF89(void){
	
	LPC_GPIO2->FIOCLR=0x30;
}

void ON10(void){
	LPC_GPIO2->FIOSET=0x40;
}


