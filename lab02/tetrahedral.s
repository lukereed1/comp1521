# Read a number n and print the first n tetrahedral numbers
# https://en.wikipedia.org/wiki/Tetrahedral_number
#
# Before starting work on this task, make sure you set your tab-width to 8!
# It is also suggested to indent with tabs only.
#
# Luke Reed 25/09/2025

#![tabsize(8)]

PRINT_INT = 1
PRINT_CHAR = 11
PRINT_STRING = 4
 # $t0 = i
 # $t1 = j
 # $t2 = n
 # $t3 = total
 # $t4 = howMany

main:				

		la		$a0, prompt # printf("Enter how many: ")
		li		$v0, PRINT_STRING
		syscall
		
		li		$v0, 5		# scanf("%d", &howMany)
		syscall
		move 	$t4, $v0

		li 		$t2, 1 		# n = 1

first_loop_condition:
		bgt 	$t2, $t4, epilogue # if (n > howMany) goto epilogue;
first_loop_top_body:
		li 		$t3, 0 # total = 0;
		li 		$t1, 1 # j = 1;
		b 		second_loop_condition # goto second_loop_condition;
first_loop_bottom_body:
		li 		$v0, PRINT_INT # printf("%d", total);
		li 		$a0, total
		syscall

		li 		$v0, PRINT_CHAR # printf('\n');
		li 		$a0, '\n'
		syscall
first_loop_step:
		addi 	$t2, 1 # n = n + 1; 
	 	b 		first_loop_condition # goto first_loop_condition;

second_loop_condition:
		bgt 	$t1, $t2, first_loop_bottom_body # if (j > n) goto first_loop_bottom_body;
second_loop_body:
		li 		$t0, 1 # i = 1;
		b 		third_loop_condition # goto third_loop_condition;
	
second_loop_step:
		addi 	$t1, 1 # j = j + 1;
		b 		second_loop_condition # goto second_loop_condition;

third_loop_condition:
		bgt 	$t0, $t1, second_loop_step # if (i > j) goto second_loop_step;
third_loop_body:
		add 	$t3, $t0 # total = total + i;
third_loop_step:
		addi 	$t0, 1 # i = i + 1;
	 	b 		third_loop_condition # goto third_loop_condition;


epilogue:
	li 		$v0, 0
	jr 		$ra

	.data
prompt:
		.asciiz "Enter how many: "
