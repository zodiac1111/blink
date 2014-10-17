/**
 * 最简单的单片机闪烁例子,PB0端口输出高低电平.
 * 用于检测各个环境是否搭建完毕.编译下载等工具是否正常运行.
 */
#define F_CPU 8000000UL
#include <avr/io.h>
#include <util/delay.h> //用于延时

int main(void)
{
	// 配置成输出模式
	DDRB |= _BV(DDB0);
	while (1) {
		PORTB ^= _BV(PB0); //每次进来反向一下=闪烁
		_delay_ms(1000); //延时
	}
}
