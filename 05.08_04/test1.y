%{
#include<stdlib.h>
#include<stdio.h>
#include<math.h>
// #define YYSTYPE float

// u need these functions given below
int yylex(); 
int yyerror(char *s){"error";}
%}
%union {double p;}
%token <p> NUM 
%token PLUS MINUS MUL DIV 
%token SIN COS TAN
%left MINUS PLUS
%left MUL DIV
%type <p> exp
%%

ss:exp {printf("= %g\n", $1);}
  
exp:exp PLUS exp {$$ = $1 + $3;}
   |exp MINUS exp {$$ = $1 - $3;}
   |exp MUL exp {$$ = $1 * $3;}
   |exp DIV exp {$$ = $1 / $3;}
   |SIN'('exp')'{$$ = sin($3 * 3.14/180);}
   |COS'('exp')'{$$ = cos($3 * 3.14/180);}
   |TAN'('exp')'{$$ = tan($3 * 3.14/180);}
   |NUM {$$ = $1;}

%%

int main()
{
	while(1){
		yyparse();
	}
}

