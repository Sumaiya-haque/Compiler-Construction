/*Identify and print all the floating-point numbers  using lex program.*/
%{
#include <stdio.h>

%}

%%

[0-9]+\.        { printf("Invalid floating-point number: %s\n", yytext); }
\.[0-9]+        { printf("Invalid floating-point number: %s\n", yytext); }
[0-9]+          { printf("Invalid floating-point number: %s\n", yytext); }
.               { printf("Invalid floating-point number: %s\n", yytext); }
[0-9]+\.[0-9]+   { printf("Floating-point number: %s\n", yytext); }

%%
int main() {
    yylex();
    return 0;
}
int yywrap()
{
  return 1;
}