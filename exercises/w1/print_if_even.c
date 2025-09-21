#include <stdio.h>

int main(void) {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);

    if (n % 2 != 0) goto epilogue;
    printf("even\n");
    
        
epilogue:
    return 0;
    
}

