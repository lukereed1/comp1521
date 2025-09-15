#include <stdio.h>
#include <stdlib.h>

int getMin(char* args[], int n);
int getMax(char* args[], int n);

int main(int argc, char *argv[]) {
	if (argc < 2) {
        printf("Usage: ./arg_stats NUMBER [NUMBER ...]");
        return 0;
    }

    int min = getMin(argv, argc);
    int max = getMax(argv, argc);
    int sum = 0;
    int prod = 1;

    for (int i = 1; i < argc; i++) {
        int curr = atoi(argv[i]);

        sum += curr;
        prod *= curr;
    }

    int mean = sum / (argc - 1);

    printf("MIN: %d\n", min);
    printf("MAX: %d\n", max);
    printf("SUM: %d\n", sum);
    printf("PROD: %d\n", prod);
    printf("MEAN: %d\n", mean);

	return 0;
}

int getMin(char* args[], int n) {
    int min = atoi(args[1]);

    for (int i = 2; i < n; i++) {
        int curr = atoi(args[i]);

        if (curr < min) {
            min = curr;
        }
    }

    return min;
}

int getMax(char* args[], int n) {
    int max = atoi(args[1]);

    for (int i = 2; i < n; i++) {
        int curr = atoi(args[i]);
        
        if (curr > max) {
            max = curr;
        }
    }

    return max;
}