/*This Flex Program recognises the comments, numbers, identifiers, strings and then displays it*/

%{
#include<stdio.h>
%}

%option noyywrap

%%
[\t ]+  ;
[0-9]+|[0-9]*\.[0-9]+ {printf("\n%s is NUMBER", yytext);}
#.* {printf("\n%s is COMMENT", yytext);}
[a-zA-Z][a-zA-Z0-9]+ {printf("\n%s is IDENTIFIER", yytext);}
\"[^ \"\n]*\" {printf("\n%s is STRING", yytext);}
\n {ECHO;}
%%

int main(){
    printf("Enter some strings: \n");
    while (yylex());
}