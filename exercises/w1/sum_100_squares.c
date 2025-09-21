#include <stdio.h>

int main(void) {
    int sum = 0;
loop_init:
    int i = 0;
loop_condition:
    if (i > 100) goto loop_end;
loop_body:
    sum += i * i; 
loop_step:
    i++;
    goto loop_condition;
loop_end:
    printf("%d\n", sum);
    return 0;


    // init
    // condition
    // body
    // increment
    // end

}