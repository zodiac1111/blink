/**
 * 最简单的单片机闪烁例子,PB0端口输入高低电平
 */
#define F_CPU 1000000UL
#include <avr/io.h>
#include <util/delay.h> //用于延时

int main(void)
{
	//配置成输出
	DDRB |= _BV(DDB0);
	while (1) {
		PORTB ^= _BV(PB0); //每次进来反向一下=闪烁
		_delay_ms(500); //延时
	}
}
