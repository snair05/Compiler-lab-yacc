%{
  #include<stdio.h>
%}
%token A B C
%%
X: P  {printf("valid");}
P: A P A
 | B P B
 | C
;
%%
int main()
{
 printf("enter the string:");
 yyparse();
}
int yyerror(char*msg)
{
 printf("invalid");
}
