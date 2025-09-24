# Read three numbers `start`, `stop`, `step`
# Print the integers bwtween `start` and `stop` moving in increments of size `step`
#
# Before starting work on this task, make sure you set your tab-width to 8!
# It is also suggested to indent with tabs only.
#
# Luke Reed 24/09/2025

#![tabsize(8)]

PRINT_INT = 1
PRINT_STRING = 4
PRINT_CHAR = 11

main:	
        # t0 = start
        # t1 = stop
        # t2 = step
        # t3 = i

        la  	$a0, prompt1	# printf("Enter the starting number: ");
        li	    $v0, 4
        syscall

        li	    $v0, 5		# scanf("%d", number);
        syscall
        move    $t0, $v0

        la  	$a0, prompt2	# printf("Enter the stopping number: ");
        li	    $v0, 4
        syscall

        li	    $v0, 5		# scanf("%d", number);
        syscall
        move    $t1, $v0

        la  	$a0, prompt3	# printf("Enter the step size: ");
        li	    $v0, 4
        syscall

        li	    $v0, 5		# scanf("%d", number);
        syscall
        move    $t2, $v0

        bge     $t1, $t0, second_conditional
        bge     $t2, 0, second_conditional

loop1_init:
        move    $t3, $t0
loop1_condition:
        blt     $t3, $t1, second_conditional
loop1_body:
        li      $v0, PRINT_INT
        move    $a0, $t3
        syscall

        li      $v0, PRINT_CHAR
        li      $a0, '\n'
        syscall
loop1_step:
        add      $t3, $t2
        b       loop1_condition
second_conditional:
        ble     $t1, $t0, epilogue
        ble     $t2, 0, epilogue
loop2_init:
        move    $t3, $t0
loop2_condition:
        bgt     $t3, $t1, epilogue
loop2_body:
        li      $v0, PRINT_INT
        move    $a0, $t3
        syscall

        li      $v0, PRINT_CHAR
        li      $a0, '\n'
        syscall
loop2_step:
        add     $t3, $t2
        b       loop2_condition
epilogue:
        li      $v0, 0
        jr      $ra

	.data
prompt1:
	.asciiz "Enter the starting number: "
prompt2:
	.asciiz "Enter the stopping number: "
prompt3:
	.asciiz "Enter the step size: "
testing123:
    .asciiz "TESTING123"