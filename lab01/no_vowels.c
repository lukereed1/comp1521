#include <stdio.h>
#include <ctype.h>

int isVowel(char c);

int main(void) {
	char c;

    while (scanf("%c", &c) == 1) {
        if (!isVowel(c)) {
            printf("%c", c);
        }
    }

    return 0;
}

int isVowel(char c) {
    if (
        tolower(c) == 'a' || tolower(c) == 'e' || tolower(c) == 'i' ||
        tolower(c) == 'o' || tolower(c) == 'u') {
            
        return 1;
    }

    return 0;
}