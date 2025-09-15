#include <stdio.h>

int main(int argc, char *argv[]) {
    printf("Program name: %s \n", argv[0]);

    if (argc > 1) {
        printf("There are %d arguments:\n", argc);

        for (int i = 1; i < argc; i++) {
            printf("\tArgument %d is \"%s\"\n", i, argv[i]);
        }
    } else {
        printf("There are no other arguments\n");
    }


	return 0;
}
