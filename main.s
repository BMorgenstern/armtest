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
	.file	"main.cpp"
	.text
	.align	1
	.global	_Z6squarei
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_Z6squarei, %function
_Z6squarei:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, r0
	muls	r3, r0
	@ sp needed
	movs	r0, r3
	bx	lr
	.size	_Z6squarei, .-_Z6squarei
	.align	1
	.global	_Z3sumii
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_Z3sumii, %function
_Z3sumii:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r0, r0, r1
	@ sp needed
	bx	lr
	.size	_Z3sumii, .-_Z3sumii
	.align	1
	.global	_Z4funci
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_Z4funci, %function
_Z4funci:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	ldr	r3, [r3]
	bl	.L6
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.size	_Z4funci, .-_Z4funci
	.section	.text.startup,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	@ sp needed
	bx	lr
	.size	main, .-main
	.global	exfunc
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	exfunc, %object
	.size	exfunc, 4
exfunc:
	.word	_Z6squarei
	.ident	"GCC: (devkitARM release 52) 8.3.0"
	.text
	.code 16
	.align	1
.L6:
	bx	r3
