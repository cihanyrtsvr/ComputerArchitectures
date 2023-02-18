#include "button.h"
#include "LPC17xx.h"

#define MAX_LEN 15
char array[MAX_LEN] ;
int i=0;
extern void bubbleSort(char* array,int len);


void EINT0_IRQHandler (void)	  
{
	int regVal;
	regVal = getTimer();
	if(i<MAX_LEN){
		array[i]=regVal;
		i++;
		if(i%2!=0){
			ON4();
		}
		else{
			ON5();
		}
	}
	
	LPC_SC->EXTINT |= (1 << 0);     /* clear pending interrupt         */
}


void EINT1_IRQHandler (void)	  
{
	OFF89();
	bubbleSort(array,i);
	ON10();
	LPC_SC->EXTINT |= (1 << 1);     /* clear pending interrupt         */
}

void EINT2_IRQHandler (void)	  
{
	LPC_SC->EXTINT |= (1 << 2);     /* clear pending interrupt         */    
}


