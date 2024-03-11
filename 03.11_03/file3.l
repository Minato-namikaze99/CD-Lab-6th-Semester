/*This is a Flex program which checks for Valid Parenthesis*/
%{
#include<stdio.h>
int flag=0, ln=1;    
%}

%option noyywrap

%%

"(" {flag++;}
")" {flag--;}
[\n] {
    if (flag==0)
        printf("\nThe statement at line no = %d has no missing parenthesis\n\n", ln); /*This means that there are valid parenthesis in the line*/
    else
        printf("\n\nError at line no = %d\n", ln);

    if (flag>0)
        printf("\nThe statement has either an extra ( parenthesis or a missing ) parenthesis\n\n");
    else if (flag<0)
        printf("\nThe statement has either an extra ) parenthesis or a missing ( parenthesis\n\n");
    flag = 0;
    ln++;
}    

%%

int main(){
    char fname[100];
    printf("\nEnter the name of the file\n"); /*takes some name of a file as input*/
    scanf("%s", fname);
    /*The name of the file is stored in fname*/

    yyin = fopen(fname, "r+"); /*This opens the file fname in r+=reading+ mode*/
    yylex();
    return 0;
}