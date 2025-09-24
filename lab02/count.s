# read a number n and print the integers 1..n one per line
#
# Before starting work on this task, make sure you set your tab-width to 8!
# It is also suggested to indent with tabs only.
#
# Luke Reed 24/09/2025

#![tabsize(8)]

PRINT_INT = 1
PRINT_CHAR = 11

main:
        # $t0 = i
        # $t1 = number
                 		
        li      $a0, prompt	# printf("Enter a number: ");
        li      $v0, 4
        syscall

        li      $v0, 5		# scanf("%d", number);
        syscall

loop_init:
        li      $t0, 1          
        move    $t1, $v0
loop_condition:
        bgt     $t0, $t1, loop_end        
loop_body:
        li      $v0, PRINT_INT
        move    $a0, $t0
        syscall

        li      $v0, PRINT_CHAR
        li      $a0, '\n'
        syscall
loop_step:
        addi    $t0, 1
        b       loop_condition
loop_end:
        li      $v0, 0
        jr      $ra

	.data
prompt:
	    .asciiz "Enter a number: "
