%{
 #include<stdio.h>
 #include<ctype.h>
%}
%token NUM
%left '&' '|' 'x'
%right '!'
%%
S: E {printf("Truth value:%d",$$);}
E: '!' E {$$ = !$2;}
 | E '&' E {$$ = $1&$3;}
 | E '|' E {$$ = $1|$3;}
 | E 'x' E {$$ = ($1&(!$3))|((!$1)&$3);}
 | NUM {$$ = $1;}
;
%%
int main()
{
 yyparse();
 return 0;
}
int yyerror(char*s)
{
}
