%{
    #include"y.tab.h"
%}
%%
[a-zA-Z] {return A;}
[0-9] {return B;}
[\t] ;
[\n] {return 0;}
. {return X;}
%%
int yywrap()
{
 return 1;
}

