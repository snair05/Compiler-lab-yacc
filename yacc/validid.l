%{
    #include"y.tab.h"
%}
%%
[a-zA-Z_] {return A;}
[0-9] {return B;}
\n {return 0;}
. {return X;}
%%
int yywrap()
{
 return 1;
}
