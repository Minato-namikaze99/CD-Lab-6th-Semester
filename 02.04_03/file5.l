/*This Flex Program takes a C program and counts the number of identifiers and some others in the program.*/
%{
#include <stdio.h>
int identifiers = 0;
int special_chars = 0;
int vowels = 0;
int consonants = 0;
%}

%%
[aeiouAEIOU]+             { vowels++; identifiers++;}
[A-Za-z]+                 { consonants++; identifiers++;}
[a-zA-Z_][a-zA-Z0-9_]*    { identifiers++; }
[ \t\n]                   { }
[^\w\s]                   { special_chars++; }
%%

//This gives us vowel words and not individual vowel letters
int main(int argc, char* argv[]) {
    if (argc != 2) {
        printf("Usage: %s <input_file>\n", argv[0]);
        return 1;
    }
    FILE* file = fopen(argv[1], "r");
    if (file == NULL) {
        perror("Error opening file");
        return 1;
    }

    yyin = file;
    yylex();

    printf("Identifiers: %d\n", identifiers);
    printf("Special Characters: %d\n", special_chars);
    printf("Vowels: %d\n", vowels);
    printf("Consonants: %d\n", consonants);

    fclose(file);
    return 0;
}

int yywrap(){
    return 1;
}

