%{
#include <stdio.h>
%}

%%

[A-Z][a-z]+(" "[A-Z][a-z]+)*  { printf("The name is a valid person's name.\n"); }
[A-Za-z]*(" "[A-Za-z]*)*  { printf("It is a name of a person, But you should write down the first letter in capital form.\n"); }
.*    { printf("It is an invalid name of a person.\n"); }

%%

int main() {
    yylex();
    return 0;
}
int yywrap ()
	{
		return 1;
	}