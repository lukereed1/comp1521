#include <stdio.h>
#include <ctype.h>

int main(void) {
    char c;

    while (c != EOF) {
        c = getchar();

        if (isupper(c)) {
            c = tolower(c);
        } 
            
        putchar(c);
    }
}
