/*This Flex Program checks if the Gmail we entered is a valid one or not*/
%{
#include<stdio.h>
%}

%%
[A-Za-z0-9._/]+"@gmail.com" printf("This is a valid GMail");
.+ printf("This is not a valid GMail");
%%

int yywrap(){return 0;}

int main(){
yylex();}
