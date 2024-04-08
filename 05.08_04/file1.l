/* This app implements a Scientific Caclulator in Lex and Yacc */
%{
#include<math.h>
#include"y.tab.h"
%}
%%
"print" { 
return PRINT; 
}
[0-9]+\.?|[0-9]*\.[0-9]+ {
yylval.p=atof(yytext);
return num;
}
"+" {
return ADD;
}
"-" {
return SUB;
}
"*" {
return MUL;
}
"=" { 
return ASSIGN; 
}
"/" {
return DIV;
}
"^" {
return POW;
}
"(" {
return OPEN_BRACKET;
}
")" {
return CLOSE_BRACKET;
}
sqrt {
return SQRT;
}
log10 {
return LOG;
}
"pi" {
return PI;
}
"e" {
return E;
}
"%" {
return MOD;
}
sin {
return SIN;
}
cos {
return COS;
}
tan {
return TAN;
}
asin {
return ASIN;
}
acos { 
return ACOS;
}
atan {
return ATAN;
}
cot {
return COT;
}
cosec {
return COSEC;
}
sec {
return SEC;
}
log {
return LOG;
}
ln {
return LN;
}
[\t];
\n {
return 0;
}
[a-z]+|[A-Z]+ {
yylval.id = yytext[0];
return VARIABLE;
}
. {
printf("Invalid character: %s\n", yytext);
return yytext[0];
}
%%