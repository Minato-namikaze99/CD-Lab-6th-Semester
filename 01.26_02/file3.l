/*This Flex Program accepts some inputs and shows us whether they are Uppercase Word, or lowercase word, or integers, etc.*/
%{
#include<stdio.h>
%}
%%
[a-z]+ printf("Lowercase Letter\n");
[A-Z]+ printf("Uppercase Letter\n");
[a-z A-Z]+ printf("Word\n");
[0-9]+ printf("Integer\n");
[0-9.]+ printf("Float\n");
";"+ printf("Semicolon\n");
"("+ printf("Open Parenthesis\n");
")"+ printf("Close Parenthesis\n");

%%

int yywrap(){};

int main()
{
yylex();
}
