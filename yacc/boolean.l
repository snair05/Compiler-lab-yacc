%{
   #include"y.tab.h"
   #include<stdio.h>
   #include<stdlib.h>
   extern int yylval;
%}
%%
(0|1)+ {yylval=atoi(yytext);
        return (NUM);}
"&"|"|"|"!"|"x"|"\n" {return yytext[0];}
%%
int yywrap()
{
 return 1;
}
