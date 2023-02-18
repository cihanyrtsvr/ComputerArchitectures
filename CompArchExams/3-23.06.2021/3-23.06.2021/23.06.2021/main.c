#include <math.h>
#include <stdio.h>
#include "LPC17xx.h"



extern int getMaxAbsoluteValue(unsigned int param1, unsigned int param2){

int result;
	
	if (param1>=param2)
	{
		result= 1;
	}
	else{
	result=0;
	}
return result;
}
