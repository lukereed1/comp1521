# read a mark and print the corresponding UNSW grade
#
# Before starting work on this task, make sure you set your tab-width to 8!
# It is also suggested to indent with tabs only.
#
# Luke Reed 24/09/2025

#![tabsize(8)]

main:
        # $t0 = mark

        la	    $a0, prompt	# printf("Enter a mark: ");
        li      $v0, 4
        syscall

        li	    $v0, 5		# scanf("%d", mark);
        syscall
        move    $t0, $v0

        blt     $t0, 50, fail
        blt     $t0, 65, pass
        blt     $t0, 75, credit
        blt     $t0, 85, distinction

        la      $a0, hd
        b       print_grade

fail:
        la      $a0, fl
        b       print_grade
pass:
        la      $a0, ps
        b       print_grade
credit:
        la      $a0, cr
        b       print_grade
distinction:
        la      $a0, dn
        b       print_grade

print_grade:
        li	    $v0, 4
        syscall

epilogue:
        li      $v0, 0
        jr      $ra

	.data
prompt:
    	.asciiz "Enter a mark: "
fl:
    	.asciiz "FL\n"
ps:
	    .asciiz "PS\n"
cr:
	    .asciiz "CR\n"
dn:
    	.asciiz "DN\n"
hd:
    	.asciiz "HD\n"
