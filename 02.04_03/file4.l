/*This Flex Program counts and displays the number of vowels and consonants in the input string*/
%{
int num_vowels = 0, num_cons = 0;
%}

%%
[aeiouAEIOU] {++num_vowels;}
[A-Za-z] {++num_cons;}
\n {return 0;}
%%

int yywrap() {}

int main() {
printf("Enter a line of characters - ");
yylex();
printf("No. of vowels = %d, No. of consonants = %d\n", num_vowels, num_cons);
return 0;
}
