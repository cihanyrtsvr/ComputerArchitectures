/*----------------------------------------------------------------------------
 * Name:    sample.c
 *
 * This software is supplied "AS IS" without warranties of any kind.
 *
 * Copyright (c) 2020 Politecnico di Torino. All rights reserved.
 *----------------------------------------------------------------------------*/
 
/* When creating the project, open the Debug tab (inside Options for target) and set:
	1) Dialog DLL: DARMP1.DLL (Simulator) or TARMP1.DLL (ULINK2/ME Cortex Debugger)
	2) Parameter: -pLPC1768 (both)						*/
                 
#include "LPC17xx.h"                    /* LPC17xx definitions                */

/*-----------------------------------------------------------------
Uncomment to import the libraries that you need
 *-----------------------------------------------------------------*/
#include "led/led.h"
#include "button/button.h"
#include "timer/timer.h"

#define MAX_LEN 15

extern char array[MAX_LEN];
extern int i;


/*----------------------------------------------------------------------------
  Main Program
 *----------------------------------------------------------------------------*/
int main (void)
{  
	// Uncomment the instructions (and add others) according to your needs
	 LED_init();					/* LED Initialization */
	 BUTTON_init();				/* BUTTON Initialization */
	 init_timer(0,0xFF);			/* TIMER0 Initialization */
	 enable_timer(0);
	
	
	// LPC_SC->PCON |= 0x1;	/* power-down mode */								
	// LPC_SC->PCON &= 0xFFFFFFFFD; 
	// SCB->SCR |= 0x2;				/* set SLEEPONEXIT */	
	while(1){
		__ASM("wfi");
	}
}
