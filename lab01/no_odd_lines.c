#include <stdio.h>
#include <string.h>

#define MAX 1024

int main(void) {
	char s[MAX];

    while (fgets(s, MAX, stdin) != NULL) {
        int length = strlen(s);
        if (length % 2 == 0) {            
            fputs(s, stdout);
        }        
    }
}
