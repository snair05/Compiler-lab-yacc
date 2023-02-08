%{
   #include<stdio.h>
%}
%token A B X
%%
P: S {printf("valid");}
S: A F 
F: A F
 | B F
 | A
 | B
;
%%
int main()
{
 printf("Enter variable:");
 yyparse();
}
int yyerror(char*msg)
{
 printf("invalid");
}
