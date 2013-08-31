# 编译时参数 微处理器类型 atmega8
all:
	avr-gcc main.c -o main.elf -Wall -mmcu=atmega8 -Os
# 复制使参数 复制代码段和数据段	
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
#上传参数 编程/下载器 usbasp 单片机：m8 下载文件main.hex
upload:
	avrdude -p m8 -c usbasp -e -U flash:w:main.hex
