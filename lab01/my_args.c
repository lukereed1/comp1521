// my_args.c
// Written by Luke Reed (z5677864)
// on 16/09/2025

#include <stdio.h>

int main(int argc, char *argv[]) {
    printf("Program name: %s \n", argv[0]);

    if (argc > 1) {
        printf("There are %d arguments:\n", argc - 1);

        for (int i = 1; i < argc; i++) {
            printf("\tArgument %d is \"%s\"\n", i, argv[i]);
        }

    } else {
        printf("There are no other arguments\n");
    }

    return 0;
}
