%{
#include<stdio.h>

int yywrap(void) {
    return 0;
}
%}


%%
[0-9]{2}[0-9]{2}[9][1-9]{3}[0-9]{9}   {printf("Valid NID: %s\n", yytext);}
[9][1-9]{3}[0-9]{9}   {printf("Valid NID: %s\n", yytext);}
[1-9]{1}[0-9]{1}[1-9]{1}[" "][0-9]{3}[" "][0-9]{4}  {printf("Valid NID: %s\n", yytext);}
.*  {printf("Invalid NID: %s\n", yytext);}

%%

int main() {
   
    yylex();

   return 0;
}