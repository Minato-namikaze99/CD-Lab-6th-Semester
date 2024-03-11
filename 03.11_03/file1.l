/* Flex program to identify capital words from the given input string */
%{
#include<stdio.h>
%}

%option noyywrap

%%

[A-Z]+[\t\n ] {printf("%s is a Capital Word! ", yytext);} /*yytext is the valid text that we will input*/
. ;

%%

int main(){
    printf("Enter some string with capital words in between: \n");
    yylex();
    return 0;
}