PRINT_STRING = 4
PRINT_CHAR = 11
READ_INT = 5

	.text
main:
	li	$v0, PRINT_STRING
	la	$a0, prompt_msg
	syscall

	li	$v0, READ_INT
	syscall
	MOVE	$t0, $v0

	REM 	$t0, $t0, 2
	BNEZ	$t0, epilogue

	li	$v0, PRINT_STRING
	la	$a0, even_msg
	syscall	

epilogue:
	li	$v0, 0
	jr	$ra


	.data
prompt_msg:
	.asciiz "Enter a number: "
even_msg:
	.asciiz "even\n"


