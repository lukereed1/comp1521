# Read a number and print positive multiples of 7 or 11 < n
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
        # $t2 = remainder

	    la  	$a0, prompt	# printf("Enter a number: ");
	    li  	$v0, 4
	    syscall

	    li  	$v0, 5		# scanf("%d", number);
	    syscall

loop_init:
        li      $t0, 1      # i = 1
        move    $t1, $v0   
loop_condition:
        bge     $t0, $t1, loop_end  # if (i > number) goto loop_end
loop_body:
        rem     $t2, $t0, 7        
        beq     $t2, 0, print_number

        rem     $t2, $t0, 11
        beq     $t2, 0, print_number        
loop_step:
        addi    $t0, 1
        b       loop_condition
loop_end:
        li      $v0, 0
        jr      $ra      

print_number:
        li      $v0, PRINT_INT
        move      $a0, $t0
        syscall
        
        li      $v0, PRINT_CHAR
        li      $a0, '\n'
        syscall

        b       loop_step

	.data
prompt:
	.asciiz "Enter a number: "
