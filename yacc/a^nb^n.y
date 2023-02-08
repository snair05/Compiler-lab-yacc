%{
  #include<stdio.h>
%}
%token A B 
%%
X: P  {printf("valid");}
P: A P B
 | A B P
 | A B
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
