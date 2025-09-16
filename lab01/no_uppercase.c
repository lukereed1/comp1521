// no_uppercase.c
// Written by Luke Reed (z5677864)
// on 16/09/2025

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
