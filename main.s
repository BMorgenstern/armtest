	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"preprocessed.cpp"
	.text
	.align	1
	.global	_Z1cv
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_Z1cv, %function
_Z1cv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6
	ldr	r3, [r3]
	ldr	r0, [r3]
	cmp	r0, #1
	beq	.L1
	movs	r0, #3
.L1:
	@ sp needed
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.size	_Z1cv, .-_Z1cv
	.global	GAMECONTROLLER9
	.global	GAMECONTROLLER8
	.global	GAMECONTROLLER7
	.global	GAMECONTROLLER6
	.global	GAMECONTROLLER5
	.global	GAMECONTROLLER4
	.global	GAMECONTROLLER3
	.global	GAMECONTROLLER2
	.global	GAMECONTROLLER0
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	GAMECONTROLLER0, %object
	.size	GAMECONTROLLER0, 4
GAMECONTROLLER0:
	.word	33705152
	.type	GAMECONTROLLER9, %object
	.size	GAMECONTROLLER9, 4
GAMECONTROLLER9:
	.word	2
	.type	GAMECONTROLLER8, %object
	.size	GAMECONTROLLER8, 4
GAMECONTROLLER8:
	.word	151060480
	.type	GAMECONTROLLER7, %object
	.size	GAMECONTROLLER7, 4
GAMECONTROLLER7:
	.word	134308896
	.type	GAMECONTROLLER6, %object
	.size	GAMECONTROLLER6, 4
GAMECONTROLLER6:
	.word	33793516
	.type	GAMECONTROLLER5, %object
	.size	GAMECONTROLLER5, 4
GAMECONTROLLER5:
	.word	33734220
	.type	GAMECONTROLLER4, %object
	.size	GAMECONTROLLER4, 4
GAMECONTROLLER4:
	.word	19025088
	.type	GAMECONTROLLER3, %object
	.size	GAMECONTROLLER3, 4
GAMECONTROLLER3:
	.word	143142080
	.type	GAMECONTROLLER2, %object
	.size	GAMECONTROLLER2, 4
GAMECONTROLLER2:
	.word	67407040
	.ident	"GCC: (devkitARM release 52) 8.3.0"
