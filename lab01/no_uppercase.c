#include <stdio.h>
#include <ctype.h>

int main(void) {
    char c = getchar();

    while (c != EOF) {
        if (isupper(c)) {
            c = tolower(c);
        } 
            
        putchar(c);

        c = getchar();
    }
}
