PRINT_STRING = 4
PRINT_INT = 5
PRINT_CHAR = 11
READ_INT = 5

	.text
main:
	li	, PRINT_STRING
	la	, prompt_msg
	syscall

	li	, READ_INT
	syscall
	MOVE	, 

	REM 	, , 2
	BNEZ	, epilogue

	li	, PRINT_STRING
	la	, even_msg
	syscall	

epilogue:
	li	, 0
	jr	


	.data
prompt_msg:
	.asciiz Enter a number: 
even_msg:
	.asciiz evenn
