#include "stdio.h"
#include "LPC17xx.h"
#include "button.h"
#include "led.h"


int main(void)
{
	LED_init();
	
	extern unsigned int	addFPpositiveNumbers(int x, int y);
	unsigned int result = addFPpositiveNumbers(255, 4);
	if (result > 3.1415){
		LED_setting1();
	}
	else {
		LED_setting2();
	}
	while(1);
}
