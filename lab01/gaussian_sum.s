# gaussian_sum.s
# Written by Luke Reed (z5677864)
# on 16/09/2025

# A simple MIPS program that calculates the Gaussian sum between two numbers

# int main(void)
# {
#   int number1, number2;
#
#   printf("Enter first number: ");
#   scanf("%d", &number1);
#
#   printf("Enter second number: ");
#   scanf("%d", &number2);
#
#   int gaussian_sum = ((number2 - number1 + 1) * (number1 + number2)) / 2;
#
#   printf("The sum of all numbers between %d and %d (inclusive) is: %d\n", number1, number2, gaussian_sum);
#
#   return 0;
# }

main:
	li	    $v0, 4
	la	    $a0, prompt1
	syscall

	li	    $v0, 5
	syscall
	move 	$t0, $v0

	li	    $v0, 4
	la      $a0, prompt2
	syscall
	
	li	    $v0, 5
	syscall
	move	$t1, $v0

	SUB 	$t2, $t1, $t0
	ADD	    $t3, $t1, $t0
	ADD	    $t4, $t2, 1
	MUL 	$t3, $t4, $t3
	DIV 	$t3, $t3, 2
	
	li	    $v0, 4
	la	    $a0, answer1
	syscall

	li 	    $v0, 1
	move	$a0, $t0
	syscall

	li	    $v0, 4
	la	    $a0, answer2
	syscall

	li 	    $v0, 1
	move 	$a0, $t1
	syscall

	li	    $v0, 4
	la	    $a0, answer3
	syscall

	li	    $v0, 1
	move 	$a0, $t3
	syscall

    li      $v0, 11
    la      $a0, '\n'
    syscall

	li	    $v0, 0
	jr	    $ra


.data
	prompt1: .asciiz "Enter first number: "
	prompt2: .asciiz "Enter second number: "

	answer1: .asciiz "The sum of all numbers between "
	answer2: .asciiz " and "
	answer3: .asciiz " (inclusive) is: "