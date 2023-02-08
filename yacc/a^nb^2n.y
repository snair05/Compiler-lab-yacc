%{
  #include<stdio.h>
%}
%token A B
%%
X: P  {printf("valid");}
P: A P B B
 | A B B
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
