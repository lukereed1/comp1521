// fibonacci.c
// Written by Luke Reed (z5677864)
// on 16/09/2025

#include <stdio.h>
#include <stdlib.h>

#define SERIES_MAX 30

int doFibonacci(int num);

int main(void) {
    int num;

    while (scanf("%d", &num) == 1) {
        int result = doFibonacci(num);
        printf("%d\n", result);
    }

    return 0;
}

int doFibonacci(int num) {
    if (num == 0) {
        return 0;
    }

    if (num == 1) {
        return 1;
    }

    return doFibonacci(num - 1) + doFibonacci(num - 2);
}