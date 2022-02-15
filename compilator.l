%{
#include <stdio.h>
#include "y.tab.h"
%}
%option noyywrap
%%
"#include PI" {yylval.str=strdup(yytext);return INCLUDE_PI;}
"return" {return RETURN;}
"void" {yylval.str=strdup(yytext);return VOID_TYPE;}
"int" {yylval.str=strdup(yytext);return INT_TYPE;}
"float" {yylval.str=strdup(yytext);return FLOAT_TYPE;}
"string" {yylval.str=strdup(yytext);return STRING_TYPE;}
"char"  {yylval.str=strdup(yytext);return CHAR_TYPE;}
"bool" {yylval.str=strdup(yytext);return BOOL_TYPE;} 
"const int" {yylval.str=strdup(yytext);return CINT_TYPE;}
"const float" {yylval.str=strdup(yytext);return CFLOAT_TYPE;}
"const string" {yylval.str=strdup(yytext);return CSTRING_TYPE;}
"const char" {yylval.str=strdup(yytext);return CCHAR_TYPE;}
"const bool" {yylval.str=strdup(yytext);return CBOOL_TYPE;}
"sqrt" {yylval.str=strdup(yytext);return SQRT_TYPE;} //functie predefinita radical
"pow" {yylval.str=strdup(yytext);return POW_TYPE;} //functie predefinita putere
"abs" {yylval.str=strdup(yytext);return ABS_TYPE;} //functie predefinita modul
"log" {yylval.str=strdup(yytext);return LOG_TYPE;} //functie predefinita logaritm
"begin" {return BGIN;}
"end" {return END;}
"if" {return IF;}
"else" {return ELSE;}
"while" {return WHILE;}
"Printf" {yylval.str=strdup(yytext);return PRINTF;}
"PI" {yylval.str=strdup(yytext);return PII;}
[a-zA-Z][a-zA-Z0-9]* {yylval.str=strdup(yytext);return ID;}
@[a-zA-Z][a-zA-Z0-9]* {yylval.str=strdup(yytext);return ID2;}
#[a-zA-Z][a-zA-Z0-9]* {yylval.str=strdup(yytext);return ID3;}
"::" {return ASSIGN;}
[0-9]+ {yylval.value=atoi(yytext);return NR1;}

[0-9]+[.][0-9]+ {yylval.fval=atof(yytext);return NR2;}
\"[a-z0-9A-Z _;,"'.=? !]+\" {yylval.str=strdup(yytext);return SIR;}
\'[a-z0-9A-Z ]\' {yylval.str=strdup(yytext);return CHR;}
[0-9]+# {yylval.bval=atoi(yytext);return BOOL;}
"+" {return SUMA;}
"-" {return SCADERE;}
":" {return IMP;}
"*" {return INM;}
"%" {return MOD;}
"==" {return EQ;}
">=" {return GE;}
"<=" {return LE;}
"!::" {return NE;}
">" {return G;}
"<" {return L;}
"++" {return INC;}
"--" {return DEC;}
"&&" {return AND;}
"||" {return OR;}
'!' {return NOT;}
[ \t] ;
\n {yylineno++;}
. {return yytext[0];}

 %%
 
 

