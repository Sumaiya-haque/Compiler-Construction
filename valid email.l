%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}  { printf("Valid email\n"); }

.* { printf("Invalid email\n"); }
%%

int main() {
    yylex();
    return 0;
}
int yywrap ()
	{
		return 1;
	}