PRINT_INT = 1
PRINT_CHAR = 11

    .text
main:
    # $t0 = i

loop_init:
    li      $t0, 0
loop_condition:
    bgt		$t0, 10, loop_end
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
    jr		$ra
    