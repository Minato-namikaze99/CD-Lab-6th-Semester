/*This Flex Program counts the number of identifiers in the input string*/
digit [0-9]
letter [A-Za-z]

%{
int count = 0;
%}

%%
{letter} ({letter}|{digit})* count++;
/yytext;
\n {return 0;}
%%

int yywrap(){};

int main(){
printf("Enter the input: ");
yylex();
printf("Number of identifiers are %d\n", count);
}
