%{
	#include<stdio.h>
%}

%%

["<" | "<=" | ">" | ">=" | "==" | "!="] {printf("%s is a relational operator\n",yytext);}
%%

int yywrap() 
{
	return 1;
}

int main()
{
	printf("Enter the string: ");
	yylex();
	return 0;
}