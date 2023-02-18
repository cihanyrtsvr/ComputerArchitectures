#include "LPC17xx.h"
#include "stdio.h"
#include "button.h"
#include "led.h"


int main(void)
{
	
	LED_init();
	BUTTON_init();
	
	while(1);
}
