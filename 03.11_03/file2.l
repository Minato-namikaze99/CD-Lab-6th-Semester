/* This is a Flex code which will convert the keywords to Uppercase */
%{
#include<stdio.h>
#include<ctype.h>
int i;
%}

keyword main|int|scanf|printf|if|else

%option noyywrap
/* This line looks for keywords and if it is a keyword, it is converted to Upper using the toupper function */
%%
{keyword} {for (i=0; i<yyleng; i++) printf("%c", toupper(yytext[i]));}

%%

int main(){
    yyin = fopen("num.c","r"); /*This opens the num.c file in r=reading mode*/
    yylex();
    return 0;
}