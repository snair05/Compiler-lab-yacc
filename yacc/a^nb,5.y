%{
  #include<stdio.h>
%}
%token A B NL
%%
X: P NL {printf("valid");} 
P: A S B 
S: S A 
 | 
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
