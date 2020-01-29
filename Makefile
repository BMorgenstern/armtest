ARM = /devkitARM/
PRJTDIR = $(shell pwd)
SRC = $(PRJTDIR)/src


GCC = $(ARM)/bin/arm-none-eabi-g++
AS = $(ARM)/bin/arm-none-eabi-as
LD = $(ARM)/bin/arm-none-eabi-ld
OBJCOPY = $(ARM)/bin/arm-none-eabi-objcopy
NM = $(ARM)/bin/arm-none-eabi-nm
OBJDUMP =  $(ARM)/bin/arm-none-eabi-objdump

NMFLAGS =  -p -nSC
DISFLAGS = -d
ASFLAGS = -g -mthumb-interwork -mcpu=arm7tdmi
CFLAGS = -Os -mthumb -mcpu=arm7tdmi -fno-exceptions -fpermissive -fomit-frame-pointer
LDFLAGS = -T hardware-offset.x -I $(ARM)/lib

clean:
	-rm -f main.o
	-rm -f main.s
	-rm -f main.bin
	-rm -f main.elf
	-rm -f main.syms

disasm: main.o
	$(OBJDUMP) $(DISFLAGS) main.o

bin: link
	$(OBJCOPY) main.elf main.bin -O binary

link: obj
	$(LD) $(LDFLAGS) -o main.elf main.o
	$(NM) $(NMFLAGS)  main.elf > main.syms

obj: asm
	$(AS) $(ASFLAGS) main.s -o main.o 

asm: preprocess
	$(GCC) $(CFLAGS) -S preprocessed.cpp -o main.s


preprocess: $(SRC)/main.cpp
	$(GCC) $(CFLAGS) -E $(SRC)/main.cpp -o preprocessed.cpp
