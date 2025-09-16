# bad_pun.s
# Written by Luke Reed (z5677864)
# on 16/09/2025

main:
    la      $a0, string
    li      $v0, 4
    syscall

    
    li      $v0, 0
    jr      $ra

    .data
string:
    .asciiz "Well, this was a MIPStake!\n"