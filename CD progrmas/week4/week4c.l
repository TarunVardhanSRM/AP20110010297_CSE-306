%{
	#include<stdio.h>
%}

%%

[0-9]+ {printf("%s is a number\n",yytext);}

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