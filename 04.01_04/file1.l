/* This is the lex file that we created to return the tokens of the input. The definitions and all are given pn the YACC file */
%{
#include "y.tab.h" //we included the header file produced by the YACC File
#include<stdlib.h>
extern int yylval;
%}

%%
[0-9]+ {yylval = atoi(yytext); return(Number);} //returns the token type that is declared in the yacc file
"+" {return(Plus);}
"-" {return(Minus);}
"*" {return(Multiplication);}
"/" {return(Division);}
"=" {return(Equal);}
[\f\n]+ {;}
. {printf("\nUnexpected Input %c\n", yytext[0]);}
%%