/*This Flex Program accepts any string and then prints it back*/
%%
[A-Z]+ {ECHO; printf("\n");}

.|\n ;

%%

int yywrap(){};
int main()
{
yylex();
}
