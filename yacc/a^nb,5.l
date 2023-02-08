%{
    #include"y.tab.h"
%}
%%
[aA]{5} {return A;}
[bB] {return B;}
[\t] ;
[\n] {return NL;}
%%
int yywrap()
{
 return 1;
}
