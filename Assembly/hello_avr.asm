__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.rodata
.LC0:
	.string	"Hello World"
	.text
.global	main
	.type	main, @function
main:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	mov r24,r25
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r24
	rcall printf
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r24,0
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	main, .-main
.global __do_copy_data
