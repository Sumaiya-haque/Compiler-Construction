/* Lex program to Identify and Count Positive and Negative Numbers */
%{
int positive_no = 0, negative_no = 0;
%}

%%
[-+]?[0-9]+ { 
    int num = atoi(yytext); 
    if (num < 0)
    {
        negative_no++;
        printf("negative number = %s\n", yytext);
    }
    else if (num > 0)
    {
        positive_no++;
        printf("positive number = %s\n", yytext);
    }
} 
%%

int yywrap() {}
int main()
{
    yylex();
    printf("number of positive numbers = %d\n"
           "number of negative numbers = %d\n",
           positive_no, negative_no);

    return 0;
}