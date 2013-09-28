# 编译时参数 微处理器类型 atmega8

CC=avr-gcc #编译器
MMCU=atmega8 #单片机类型

# ******************************************************
.PHONY:all clean compile objcopy upload

all:compile objcopy upload
# 1. 编译
compile:
	$(CC) main.c -o main.elf -Wall -mmcu=$(MMCU) -Os

# 2. 复制使参数 复制代码段和数据段	
objcopy:
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex

# 3. 上传参数 编程/下载器 usbasp 单片机：m8 下载文件main.hex
upload:
	avrdude -p m8 -c usbasp -e -U flash:w:main.hex

clean:
	rm -rf main.elf main.hex
