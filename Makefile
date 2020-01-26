ARM = /home/brendan/Documents/devkitARM/
PATH = $(shell pwd)
SRC = $(PATH)/src


GCC = $(ARM)/bin/arm-none-eabi-g++
AS = $(ARM)/bin/arm-none-eabi-as
LD = $(ARM)/bin/arm-none-eabi-ld
OBJCOPY = $(ARM)/bin/arm-none-eabi-objcopy
NM = $(ARM)/bin/arm-none-eabi-nm
OBJDUMP =  $(ARM)/bin/arm-none-eabi-objdump

NMFLAGS =  --format=sysv -nSC
DISFLAGS = -d
ASFLAGS = -g -mthumb-interwork -mcpu=arm7tdmi
CFLAGS = -Os -mthumb -mcpu=arm7tdmi -fno-exceptions -fpermissive -fomit-frame-pointer
LDFLAGS = -T hardware-offset.x -I $(ARM)/lib


disasm: main.o
	$(OBJDUMP) $(DISFLAGS) main.o

bin: link
	$(OBJCOPY) main.elf main.bin -O binary

link: obj
	$(LD) $(LDFLAGS) -o main.elf main.o
	$(NM) $(NMFLAGS)  main.elf > main.syms

obj: asm
	$(AS) $(ASFLAGS) main.s -o main.o 

asm:
	$(GCC) $(CFLAGS) -S $(SRC)/main.cpp -o main.s
