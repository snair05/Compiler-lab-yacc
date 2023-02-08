%{
    #include"y.tab.h"
%}
%%
[aA] {return A;}
[bB] {return B;}
[cC] {return C;}
[\t] ;
[\n] {return 0;}
%%
int yywrap()
{
 return 1;
}

