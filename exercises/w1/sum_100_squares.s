PRINT_INT = 1
PRINT_STRING = 4
PRINT_CHAR = 11

	# sum = $t0
	# i = $t1

	.text
main:
	li      $t0, 0

loop_init:
	li      $t1, 0

loop_condition:
	BGT	    $t1, 100, loop_end

loop_body:
	MUL	    $t2, $t1, $t1
	ADD 	$t0, $t2
	
loop_step:
	ADDI	$t1, 1
	B   	loop_condition

loop_end:
	li	    $v0, PRINT_INT
	MOVE	$a0, $t0
	syscall

    li      $v0, PRINT_CHAR
    li      $a0, '\n'
    syscall

	li 	$v0, 0
	jr	$ra	
