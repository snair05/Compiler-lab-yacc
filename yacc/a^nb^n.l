%{
    #include"y.tab.h"
%}
%%
[aA] {return A;}
[bB] {return B;}
[\t] ;
[\n] {return 0;}
%%
int yywrap()
{
 return 0;
}

