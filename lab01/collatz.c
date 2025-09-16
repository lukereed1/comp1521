// collatz.c
// Written by Luke Reed (z5677864)
// on 16/09/2025

#include <stdio.h>
#include <stdlib.h>

void doCollatz(int num);

int main(int argc, char *argv[])
{
    if (argc != 2) {
        printf("Usage: ./collatz NUMBER\n");
        return 0;
    }

    doCollatz(atoi(argv[1]));

    return 0;
}

void doCollatz(int num) {
    printf("%d\n", num);

    if (num == 1) {
        return;
    }

    if (num % 2 == 0) {
        doCollatz(num / 2);
    } else {
        doCollatz(3 * num + 1);
    }
}