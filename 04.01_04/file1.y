/* This is the YACC file that we created */

%{
#include<stdlib.h>
#include<stdio.h>
int yyerror(char*s) {"Mistake like my life\n";}
%}

%token Plus Minus Multiplication Division Number Equal 
%start input 
%left Division Multiplication Plus Minus 

%%
input:
        | input line {printf("The result is %d\n", $2);}
line: Equal 
        | Exp Equal 
;

        Exp:Number 
                | Exp Plus Exp {$$ = $1 + $3;}
                | Exp Minus Exp {$$ = $1 - $3;}
                | Exp Multiplication Exp {$$ = $1 * $3;}
                | Exp Division Exp { 
                    if ($3 == 0) {
                        $$ = 0;  // Set result to 0 for division by zero
                    } else {
                        $$ = $1 / $3;
                    }
                } ;
%%


int yylex();
int yywrap() {return 1;}
int main(void) {yyparse();}