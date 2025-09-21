#include <stdio.h>

int main(void) {
    // for (int i = 1; i <= 10; i++) {
    //     printf("%d\n", i);
    // }

    // return 0;

loop_init:;
    int i = 0;
loop_condition:
    if (i > 10) goto loop_end;
loop_body:
    printf("%d\n", i);
loop_step:
    i++;
    goto loop_condition;
loop_end:
    return 0;
}