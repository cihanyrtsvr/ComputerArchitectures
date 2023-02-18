/*********************************************************************************************************
**--------------File Info---------------------------------------------------------------------------------
** File name:           led.h
** Last modified Date:  2019-11-26
** Last Version:        V1.00
** Descriptions:        Prototypes of functions included in lib_led.c
** Correlated files:    lib_led.c
**--------------------------------------------------------------------------------------------------------       
*********************************************************************************************************/

/* lib_led */
void LED_init(void);
void LED_deinit(void);
void all_LED_off(void);
void first_four_LED_On(void);
void led_output(unsigned int num);
