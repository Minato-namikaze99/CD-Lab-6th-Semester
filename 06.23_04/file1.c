//This C program is like an Automata which accepts strings which end with 00 
#include<stdio.h>
#define max 100 

int main() {

    char str[max], state='A';
    printf("Enter string to check if it ends with 00 over symbols 0 and 1: ");
    scanf("%s", str);

    for (int i=0; str[i]!='\0'; i++){
        if (state=='A'){
            state=(str[i]=='0')?'B':'A';
        }
        else if (state=='B'){
            state=(str[i]=='0')?'C':'A';
        }
        else if (state=='C'){
            state=(str[i]=='0')?'C':'A';
        }
    }
    printf((state=='C') ? "\nString ACCEPTED!\n" : "\nString REJECTED!\n");

    return 0;
}