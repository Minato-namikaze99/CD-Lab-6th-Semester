/*This Flex Program counts the number of characters and the number of lines in the input string*/
%{
int num_lines = 0, num_chars = 0;
%}

%%
\n {++num_lines; ++num_chars;}
. {++num_chars;}
%%

int yywrap() {}

int main ()
{
yylex();
printf("No. of lines = %d, No. of chars = %d\n", num_lines, num_chars);
return 0;
}
