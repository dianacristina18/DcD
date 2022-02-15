%{
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>
#include <stdlib.h>
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include <string.h>


extern FILE* yyin;
extern char* yytext;
extern int yylineno;
typedef struct node1
{
    char item;
    struct node1 * left;
    struct node1 * right;
}*Btree;
Btree pop1();
struct {
  char numee[50];
}clase[100];
struct node {
    char data;
    struct node* left;
    struct node* right;
    struct node* next;
};
 struct node *head=NULL;
/* Helper function that allocates a new node with the
   given data and NULL left and right pointers. */
struct node* newNode(char data)
{
    struct node* node
        = (struct node*)malloc(sizeof(struct node));
    node->data = data;
    node->left = NULL;
    node->right = NULL;
    node->next = NULL;
    
    return (node); 
}
struct node* pop()
{
    // Poping out the top most[ pointed with head] element
    struct node* p = head;
    head = head->next;
    return p;
}
char c[100],v[20],v2[20],calc[20],operator,operatii[100],s_1[10],numef[100][100],ftipe[100][100],numep[100][100],ptipe[100][100],sir_cuvinte[100][30000],tp[100],id_1[10],aranjat[100],sir_op[100];
char nume[100][100];//pentru numele variabilelor
int valoare1[100];//pentru valoarea variabilelor de tip int
int valoare01[100][100];//pentru valoarea variabilelor de tip int a vectorilor
int vector[100];
float valoare2[100];//pentru valoarea variabilelor de tip float
float valoare02[100][100];//pentru valoarea variabilelor de tip float a vectorilor
float fvector[100];
int valoare3[100];//pentru valoarea variabilelor de tip bool
char valoare4[100][100];//pentru valoarea variabilelor de tip char
char valoare5[100][100];//pentru valoarea variabilelor de tip string
int valoare6[100];//pentru valoarea variabilelor de tip const int
float valoare7[100];//pentru valoarea variabilelor de tip const float
char valoare8[100][100];//pentru valoarea variabilelor de tip const string
char valoare9[100][100];//pentru valoarea variabilelor de tip const char
int valoare10[100];//pentru valoarea variabilelor de tip const bool
char tip[100][100];//pentru tipul variabilelor
char cuvinte[10][100];
int pvaloare[100];
float pfvaloare[100];
int i=0,ok=0,count=0,pozitie,x,x1,Z,ZZ,okZ=1,okZZ=1,k=0,fk=0,contor=0,fcontor=0,kok=0,x_if,countf=0,jjj=0,lr=0,ok_f=0,kt=0,val_f,nrc=0,ds=0;
int B,Cx,Bb,Bbb,q,qw,qqw,okk=0,yt=0;
int validarePRINT=1,valid1,valid2,pozvalid1,pozvalid2,numara_expresii=0,X,xX=0,vx;
float y,xx,y3,PI,xx_if;
char z[100],zz[100];
char w[100],ww[100],vect[100],tipo[100],tipvalid1[100],tipvalid2[100],vect1[100],cond[100];
int t,tt,qq,nr=0,vv,uc,nr1;
Btree root;
void operandFunc(char);
void operatorFunc(char);
void push1(Btree);

void infix(Btree);
void postfix(Btree);
void prefix(Btree);
int solve(Btree);
int calculate(char,int,int);
int isOperand1(char); 
char expression[25];
Btree stack[25];
int stackPtr = -1;
void afisare();
int diferit(char variabila[10]);
int verificare(char tip1[10]);
void cautare(char sir1[10]);
int vrf(char nume1[100]);
int verificare_v(char denumire[10],int poz);
int ver(char s1[100],char s2[100]);
void afisare_sir(char sir[100],int ok);
void afisare_sirr(char sir[100],int ok);
void atribuire0(char var[100],char vecto[100],int poz);
void atribuire(char s1[100],char s2[100]);
void atribuire1(char nume[100],int values);
void atribuire1dec(char nume[100]);
void atribuire1inc(char nume[100]);
void atribuire2dec(char nume[100]);
void atribuire2inc(char nume[100]);
void atribuire01(char nume[100],int q,int values);
void atribuire2(char nume[100],float values);
void atribuire02(char nume[100],int q,float values);
void atribuire3(char nume[100],int values);
void atribuire4(char nume[100],char *values);
void atribuire5(char nume[100],char* values);
void atribuire6(char nume[100],int values);
void atribuire7(char nume[100],float values);
void atribuire8(char nume[100],char* values);
void atribuire9(char nume[100],char* values);
void atribuire_bydefault1(char*s);
void atribuire_bydefault01(char*s,int q);
void atribuire001(char nume1[100], int values);
void fatribuire2(char s1[100],char s2[100]);
void patribuire(char s1[100],char s2[100]);
void atribuire_bydefault2(char*s);
void atribuire_bydefault02(char*s,int q);
void atribuire002(char nume1[100], float values);
void atribuire_bydefault3(char*s);
void atribuire_bydefault4(char*s);
void atribuire_bydefault5(char*s);
void atribuire_bydefault6(char*s);
void atribuire_bydefault7(char*s);
void atribuire_bydefault8(char*s);
void atribuire_bydefault9(char*s);
void atribuire_bydefault10(char*s);
void rearanjeaza(char op[100]);
void atrPI();
void buildAST(struct node *head,struct node *left,struct node *right,struct node* data);
void printInorder(struct node* node);
void push(struct node* x);
int toInt(char *s1);

int evalAST(char operatie[100]);

%}
%union
{
  char* str;
  int value,bval;
  float fval;
}
%token<str> VOID_TYPE INT_TYPE FLOAT_TYPE STRING_TYPE CHAR_TYPE BOOL_TYPE CINT_TYPE CFLOAT_TYPE CSTRING_TYPE CCHAR_TYPE  CBOOL_TYPE SIR CHR ID ID2 PRINTF SQRT_TYPE POW_TYPE ABS_TYPE LOG_TYPE ID3 INCLUDE_PI PII SUMA SCADERE INM IMP MOD
%token BGIN END  ASSIGN 
%token<value> NR1 BOOL NR01
%token<fval>  NR2 
%token INC DEC EQ GE LE L G NE AND OR NOT IF ELSE WHILE RETURN
%start progr
%%

progr: declaratii bloc {printf("program corect sintactic\n");}
     ;

declaratii :declaratie01
	   |declaratii declaratie01
	   |declaratie0 
	   |declaratii declaratie0   
	   |declaratie1 ';'
	   | declaratii declaratie1 ';'
	   |declaratie2 ';'
	   |declaratii declaratie2 ';'  
	   |declaratie3 ';'
	   |declaratii declaratie3 ';'
	   |declaratie4 ';'
	   |declaratii declaratie4 ';'
	   |declaratie5 ';'
	   |declaratii declaratie5 ';'
	   |declaratie6 ';'
	   |declaratii declaratie6 ';'
	   |declaratie7 ';'
	   |declaratii declaratie7 ';'
	   |declaratie8 ';'
	   |declaratii declaratie8 ';'
	   |declaratie9';'
	   |declaratii declaratie9';'
	   |declaratie10 ';'
	   |declaratii declaratie10 ';'
	  
	   ;
list01 :  statement01 ';' 
     | list01 statement01 ';'
     |instructiune
     | list01 instructiune01
;
instructiune01:IF '(' conditie ')'{if(x==1) kok=1; else kok=0; } '{' list1 '}' functie01
	     |WHILE '(' conditie ')' {if(x==1) kok=1; else kok=0; } '{' list3 '}'  
;
functie01:ELSE { if(x==0) kok==0;} '{' list2 '}'
	| ';' 

;

statement01:ID ASSIGN NR1 {if(verificare(strdup($1))==1  ){atribuire1(strdup($1),$3);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA {bzero(operatii,100);if(verificare(strdup($1))==1 ) {atribuire1(strdup($1),x);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA FORM11 lista_param1 {nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);if(verificare(strdup($1))==1 ) {atribuire1(strdup($1),x);}}
         |ID DEC {if(verificare(strdup($1))==1 ){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1dec(strdup($1));else atribuire2dec(strdup($1));}}}}
         |ID INC {if(verificare(strdup($1))==1 ){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1inc(strdup($1));else atribuire2inc(strdup($1));}}}}
         | ID ASSIGN NR2 {if(verificare(strdup($1))==1 ){atribuire2(strdup($1),$3);}}
      	  | ID ASSIGN PII {if(verificare(strdup($1))==1 ){if(okk==1) atribuire2(strdup($1),PI); else yyerror("nu ati declarat biblioteca");}}  
	 | ID ASSIGN BOOL {if(verificare(strdup($1))==1&&($3==1||$3==0) ){ atribuire3(strdup($1),$3);}else {yyerror("nu este o valoare bool");validarePRINT=0;}}
         | ID ASSIGN CHR {if(verificare(strdup($1))==1 ) atribuire4(strdup($1),strdup($3));}
         | ID ASSIGN SIR  {if(verificare(strdup($1))==1 )atribuire5(strdup($1),strdup($3));}
         | ID2 ASSIGN NR1 {  yyerror("imposibil de asignat,avem tip const"); validarePRINT=0; }
         | ID2 ASSIGN NR2 {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN SIR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN CHR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN BOOL  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | IDD3 ASSIGN '{' next_valo '}' {if(verificare(vect)==1 ){contor--;atribuire001(vect,x1);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;} }
         | IDD3 ASSIGN '{' next_valor '}' {if(verificare(vect)==1){fcontor--;atribuire002(vect,y3);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;}}
         | ID ASSIGN IDD3 '{' valoare001 '}' {if(verificare_v(vect,x1)==1 &&ok_f==1){;atribuire0(strdup($1),vect,x1);}else{yyerror("ati depasit limita vectorului");validarePRINT=0;}}
         |ID ASSIGN EXPRESIE_BOOLEAN {numara_expresii=0;if(verificare(strdup($1))==1 ) {atribuire1(strdup($1),x);}}
         |ID ASSIGN '('EXPRESIE_BOOLEAN ')' FORM '('EXPRESIE_BOOLEAN')' {calculeaza(&x,X,calc); if(verificare(strdup($1))==1 ) {numara_expresii=0;atribuire1(strdup($1),x);}}
         |ID ASSIGN '(' EXPRESIE_BOOLEAN ')' FORM '(' EXPRESIE_BOOLEAN ')' {calculeaza(&x,X,calc);} FORM lista_param {if(verificare(strdup($1))==1 ) {numara_expresii=0;atribuire1(strdup($1),x);}  }  
        
         | PRINTF '(' afisarea1 ')'
         | PRINTF '(' afisarea ',' printul ')'
         | PRINTF '(' afisarea ',' expresia ')'
         |INT_TYPE ID ',' lista_param{if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault1(strdup($2));}}
           | INT_TYPE ID ASSIGN valoare1 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN EXPRESIE_ARITMETICA {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}bzero(operatii,100);}
            | INT_TYPE ID ASSIGN EXPRESIE_BOOLEAN {numara_expresii=0;if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN '('EXPRESIE_BOOLEAN ')' FORM '('EXPRESIE_BOOLEAN')' {calculeaza(&x,X,calc); if(diferit(strdup($2))==1) {numara_expresii=0;atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           | INT_TYPE ID ASSIGN SQRT_TYPE '[' valoare22 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN ABS_TYPE '|' valoare22222 '|' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
             | INT_TYPE ID ASSIGN LOG_TYPE '[' valoare222222 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare2222 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           | INT_TYPE ID {strcpy(v,strdup($2));if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault1(strdup($2));}}
           | INT_TYPE ID ASSIGN valoare1 ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           | INT_TYPE ID ASSIGN EXPRESIE_BOOLEAN ',' lista_param {numara_expresii=0;if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN '(' EXPRESIE_BOOLEAN ')' FORM '(' EXPRESIE_BOOLEAN ')' {calculeaza(&x,X,calc);} FORM lista_param {if(diferit(strdup($2))==1) {numara_expresii=0;atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}  }    

           | INT_TYPE ID ASSIGN EXPRESIE_ARITMETICA FORM11 lista_param1 {nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            |INT_TYPE ID ASSIGN SQRT_TYPE '[' valoare22 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           |INT_TYPE ID ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare2222 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            |INT_TYPE ID ASSIGN ABS_TYPE '|' valoare22222 '|' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            |INT_TYPE ID ASSIGN LOG_TYPE '[' valoare222222 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE IID3 '{' valoare1 '}' {if(diferit(vect)==1) {atribuire(strdup($1),vect);atribuire_bydefault01(vect,x);}}
            | INT_TYPE IID3 '{' valoare1 '}' ASSIGN '{' next_val   '}' {if(diferit(vect)==1) {atribuire(strdup($1),vect);atribuire01(vect,x,x1);}}
           ;
         ;
declaratie01:VOID_TYPE ID {lr=0;}'(' lista_parama ')' {if(countf>0){if(fverificare(strdup($2),tipo)==1) fatribuire2(strdup($1),strdup($2));else yyerror("eroare la semnatura");} else fatribuire2(strdup($1),strdup($2));} '{' list01 '}'
	    |INT_TYPE ID '(' lista_parama ')' {if(countf>0){if(fverificare(strdup($2),tipo)==1) fatribuire2(strdup($1),strdup($2));else yyerror("eroare la semnatura");} else fatribuire2(strdup($1),strdup($2));}'{' list01 RETURN val ';' '}'
	    |INT_TYPE ID '(' lista_parama ')' {if(countf>0){if(fverificare(strdup($2),tipo)==1) fatribuire2(strdup($1),strdup($2));else yyerror("eroare la semnatura");} else fatribuire2(strdup($1),strdup($2));}'{' list01 RETURN val ';' '}';
;
val:NR1{val_f=$1;}
   |ID{cautare(strdup($1));}
;
lista_parama: parametru 
	     |parametru ',' lista_parama
	     |' '
;
parametru:INT_TYPE ID {tipo[lr]='i';lr++;patribuire(strdup($1),strdup($2));}
	  |FLOAT_TYPE ID {tipo[lr]='f';lr++;patribuire(strdup($1),strdup($2));}
	  |STRING_TYPE ID {tipo[lr]='s';lr++;patribuire(strdup($1),strdup($2));}
	  |CHAR_TYPE ID {tipo[lr]='c';lr++;patribuire(strdup($1),strdup($2));}
;

afisarea: SIR{strcpy(c,strdup($1));afisare_sirr(c,1);strcat(sir_cuvinte[countf],c);strcat(sir_cuvinte[countf],"::");};
afisarea1:SIR{strcpy(c,strdup($1));afisare_sirr(c,1);strcat(sir_cuvinte[countf],c);strcat(sir_cuvinte[countf],"\n");};

expresia:EXPRESIE_ARITMETICA {nr=0;x=evalueaza_exp(operatii);printf("%d\n",x);bzero(operatii,100);}
	  |EXPRESIE_ARITMETICA FORM11 lista_param1{ nr=0;rearanjeaza(operatii);x=evalAST(aranjat);bzero(operatii,100);printf("%d\n",x);};
printul: ID { strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++)
          
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
           if(strcmp(tip[i],"int")==0)
           {char str[20];sprintf(str,"%d",valoare1[i]); strcat(sir_cuvinte[countf],str);strcat(sir_cuvinte[countf],"\n"); break;}
           else
           if(strcmp(tip[i],"float")==0)
            {char str[20];sprintf(str,"%lf",valoare2[i]); strcat(sir_cuvinte[countf],str);strcat(sir_cuvinte[countf],"\n");break;}
           else
           if(strcmp(tip[i],"string")==0)
            {
            if(okZ==1){
            strcpy(valoare5[i],valoare5[i]+1);
            strcpy(valoare5[i]+(strlen(valoare5[i])-1),valoare5[i]+(strlen(valoare5[i])-1)+1);
            strcat(sir_cuvinte[countf],valoare5[i]);strcat(sir_cuvinte[countf],"\n");
            }
            else
            if(okZ==0)
            strcat(sir_cuvinte[countf],"\n");
            
            }
            else
           if(strcmp(tip[i],"char")==0)
            {
            
            strcpy(valoare4[i],valoare4[i]+1);
            strcpy(valoare4[i]+(strlen(valoare4[i])-1),valoare4[i]+(strlen(valoare4[i])-1)+1);
           strcat(sir_cuvinte[countf],valoare4[i]);strcat(sir_cuvinte[countf],"\n");
            
            break;
            }
            else
           if(strcmp(tip[i],"bool")==0)
           { printf("%d\n",valoare3[i]); break;}
           else
           if(strcmp(tip[i],"const int")==0)
           {
           
           printf("%d\n",valoare6[i]);break;
           }
           }
           }
            /*for(int i=0;i<countf;i++){
         //printf("am intrat in for\n");
         int j=0;char var[2];strcpy(var,strdup($1));
         for(int j=0;j<3;j++)
         {
            if(numep[i][j]==var[0]) 
           {  
           if(ptipe[i][j]=='i')
           {printf("%d\n",pvaloare[0]); break;}
           else
           if(ptipe[i]=='f')
            {printf("%lf\n",pfvaloare[i]);break;}
           else
           if(ptipe[i]=='s')
            {
            if(okZ==1){
            strcpy(valoare5[i],valoare5[i]+1);
            strcpy(valoare5[i]+(strlen(valoare5[i])-1),valoare5[i]+(strlen(valoare5[i])-1)+1);
            strcat(sir_cuvinte[countf],valoare5[i]);strcat(sir_cuvinte[countf],"\n");
            }
            else
            if(okZ==0)
            strcat(sir_cuvinte[countf],"\n");
            
            }
            else
           if(ptipe[i]=='c')
            {
            
            strcpy(valoare4[i],valoare4[i]+1);
            strcpy(valoare4[i]+(strlen(valoare4[i])-1),valoare4[i]+(strlen(valoare4[i])-1)+1);
           strcat(sir_cuvinte[countf],valoare4[i]);strcat(sir_cuvinte[countf],"\n");
            
            break;
            }
            else
           if(strcmp(tip[i],"bool")==0)
           { printf("%d\n",valoare3[i]); break;}
           else
           if(strcmp(tip[i],"const int")==0)
           {
           
           printf("%d\n",valoare6[i]);break;
           }
           }
           
           }
           }*/
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          
          
         
;
declaratie0:INCLUDE_PI  {atrPI();}
;
declaratie1: INT_TYPE ID ',' lista_param{if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault1(strdup($2));}}
           | INT_TYPE ID ASSIGN valoare1 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN EXPRESIE_ARITMETICA {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}bzero(operatii,100);}
            | INT_TYPE ID ASSIGN EXPRESIE_BOOLEAN {numara_expresii=0;if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN '('EXPRESIE_BOOLEAN ')' FORM '('EXPRESIE_BOOLEAN')' {calculeaza(&x,X,calc); if(diferit(strdup($2))==1) {numara_expresii=0;atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           | INT_TYPE ID ASSIGN SQRT_TYPE '[' valoare22 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN ABS_TYPE '|' valoare22222 '|' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
             | INT_TYPE ID ASSIGN LOG_TYPE '[' valoare222222 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare2222 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           | INT_TYPE ID {strcpy(v,strdup($2));if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault1(strdup($2));}}
           | INT_TYPE ID ASSIGN valoare1 ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           | INT_TYPE ID ASSIGN EXPRESIE_BOOLEAN ',' lista_param {numara_expresii=0;if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE ID ASSIGN '(' EXPRESIE_BOOLEAN ')' FORM '(' EXPRESIE_BOOLEAN ')' {calculeaza(&x,X,calc);} FORM lista_param {if(diferit(strdup($2))==1) {numara_expresii=0;atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}  }    

           | INT_TYPE ID ASSIGN EXPRESIE_ARITMETICA FORM11 lista_param1 {nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            |INT_TYPE ID ASSIGN SQRT_TYPE '[' valoare22 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
           |INT_TYPE ID ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare2222 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            |INT_TYPE ID ASSIGN ABS_TYPE '|' valoare22222 '|' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            |INT_TYPE ID ASSIGN LOG_TYPE '[' valoare222222 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire1(strdup($2),x);}}
            | INT_TYPE IID3 '{' valoare1 '}' {if(diferit(vect)==1) {atribuire(strdup($1),vect);atribuire_bydefault01(vect,x);}}
            | INT_TYPE IID3 '{' valoare1 '}' ASSIGN '{' next_val   '}' {if(diferit(vect)==1) {atribuire(strdup($1),vect);atribuire01(vect,x,x1);}}
           ;

 next_val: valoare01 {atribuire01(vect,x,x1);}
 	  |next_val ',' valoare01 {atribuire01(vect,x,x1);} 
; 	
VAL1:ID
{
for(int i=0;i<count;i++)
 {
 if(strcmp(nume[i],strdup($1))==0)
   {
   valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);
   nr1=0;
vv=valoare1[pozvalid1];

while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}

}	
   }
   if(valid1==0) {yyerror("nu e declarata variabila");break;}
 }
 

|NR1
{
nr1=0;
vv=$1;

while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}

}	
|NR2
{
char uc[10];
float vv;
 gcvt($1, 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
;  
 FORM:  AND {strcpy(calc,"AND");}
       |OR{strcpy(calc,"OR");}
       |NOT{strcpy(calc,"NOT");}
       ;
FORM1: SUMA{operator='+';}
     |SCADERE{operator='-';}
     |INM{operator='*';}
     |IMP{operator=':';}
     |MOD{operator='%';}
     ;
FORM11: SUMA{operator='+';operatii[nr++]='+';}
     |SCADERE{operator='-';operatii[nr++]='-';}
     |INM{operator='*';operatii[nr++]='*';}
     |IMP{operator=':';operatii[nr++]=':';}
     |MOD{operator='%';operatii[nr++]='%';};
 EXPRESIE_ARITMETICA:ID FORM1 ID
 {
  for(int i=0;i<count;i++)
 {
 if(strcmp(nume[i],strdup($1))==0)
   {
  valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);
  nr1=0;

if(strcmp(tip[pozvalid1],"int")==0)
{

vv=valoare1[pozvalid1];
while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
	
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
}
else if(strcmp(tip[pozvalid1],"float")==0)
{
	char uc[10];
 gcvt(valoare2[pozvalid1], 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
   }
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($3))==0)
   {valid2=1; pozvalid2=i;strcpy(tipvalid2,tip[i]);}
 
 }
 if(pozvalid2==0){yyerror("nu e declarata variabila");break;}
 
 if(operator=='+') 
 {	
 	operatii[nr++]='+';
 	 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0))
 	 {
 	x=valoare1[pozvalid1]+valoare1[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0))
 	 {
 	x=valoare1[pozvalid1]+valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0))
 	 {
 	x=valoare2[pozvalid1]+valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0))
 	 {
 	x=valoare2[pozvalid1]+valoare1[pozvalid2];
 	 }
 	 
 }
  if(operator=='-') 
 {	
operatii[nr++]='-';
 	 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0))
 	 {
 	x=valoare1[pozvalid1]-valoare1[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0))
 	 {
 	x=valoare1[pozvalid1]-valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0))
 	 {
 	x=valoare2[pozvalid1]-valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0))
 	 {
 	x=valoare2[pozvalid1]-valoare1[pozvalid2];
 	 }
 	 
 }
  if(operator==':') 
 {	
 	operatii[nr++]=':';
 	 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0) && valoare1[pozvalid2]!=0)
 	 {
 	x=valoare1[pozvalid1]/valoare1[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0)&&valoare2[pozvalid2]!=0.0)
 	 {
 	x=valoare1[pozvalid1]/valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0)&&valoare2[pozvalid2]!=0.0)
 	 {
 	x=valoare2[pozvalid1]/valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0) &&valoare1[pozvalid2]!=0)
 	 {
 	x=valoare2[pozvalid1]/valoare1[pozvalid2];
 	 }
 	 else
 	 {
 	 	yyerror("nu se poate realiza impartirea");
 	 }
 	
 	 
 }
  if(operator=='*') 
 {	
 operatii[nr++]='*';
 	 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0))
 	 {
 	x=valoare1[pozvalid1]*valoare1[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0))
 	 {
 	x=valoare1[pozvalid1]*valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0))
 	 {
 	x=valoare2[pozvalid1]*valoare2[pozvalid2];
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0))
 	 {
 	x=valoare2[pozvalid1]*valoare1[pozvalid2];
 	 }
 	 
 }
   if(operator=='%') 
 {	
 operatii[nr++]='%';
 	 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0))
 	 {
 	x=valoare1[pozvalid1]%valoare1[pozvalid2];
 	 } 	 
 }
 if(valid2==1) 
 {
nr1=0;
if(strcmp(tip[pozvalid2],"int")==0)
{
vv=valoare1[pozvalid2];
while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
	
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
}
else if(strcmp(tip[pozvalid2],"float")==0)
{
	char uc[10];
 gcvt(valoare2[pozvalid2], 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
 }

 }
 |ID FORM1 NR1
 {
  for(int i=0;i<count;i++)
 {
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;
nr1=0;
vv=valoare1[pozvalid1];

if(strcmp(tip[pozvalid1],"int")==0)
{
while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
	
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
}
else if(strcmp(tip[pozvalid1],"float")==0)
{
	char uc[10];
 gcvt(valoare2[pozvalid1], 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
   }
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 
 if(operator=='+') 
 {	
 	operatii[nr++]='+';
 	 if((strcmp(tipvalid1,"int")==0))
 	 {
 	x=valoare1[pozvalid1]+$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0))
 	 {
 	x=valoare2[pozvalid1]+$3;
 	 }
 	 
 }
  if(operator=='-') 
 {	
operatii[nr++]='-';
 	 if((strcmp(tipvalid1,"int")==0))
 	 {
 	x=valoare1[pozvalid1]-$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0))
 	 {
 	x=valoare2[pozvalid1]-$3;
 	 }
 	 
 }
  if(operator==':') 
 {	
 operatii[nr++]=':';
 	  if((strcmp(tipvalid1,"int")==0) && $3!=0)
 	 {
 	x=valoare1[pozvalid1]/$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&& $3!=0)
 	 {
 	x=valoare2[pozvalid1]/$3;
 	 }
 	 if($1==0)
 	 {
 	 	yyerror("nu se poate realiza impartirea");
 	 }
 	 
 }
  if(operator=='*') 
 {	
operatii[nr++]='*';
 	 if((strcmp(tipvalid1,"int")==0))
 	 {
 	x=valoare1[pozvalid1]*$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0))
 	 {
 	x=valoare2[pozvalid1]*$3;
 	 }
 	 
 }
   if(operator=='%') 
 {	
 operatii[nr++]='%';
 	 if((strcmp(tipvalid1,"int")==0))
 	 {
 	x=valoare1[pozvalid1]%$3;
 	 } 	 
 }
nr1=0;
vv=$3;

while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
 }
 |ID FORM1 NR2
 {
  for(int i=0;i<count;i++)
 {
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;
nr1=0;
vv=valoare1[pozvalid1];

if(strcmp(tip[pozvalid1],"int")==0)
{
while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
	
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
}
else if(strcmp(tip[pozvalid1],"float")==0)
{
	char uc[10];
 gcvt(valoare2[pozvalid1], 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
   }
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 
 if(operator=='+') 
 {	
 operatii[nr++]='+';
 	 if((strcmp(tipvalid1,"int")==0))
 	 {
 	x=valoare1[pozvalid1]+$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0))
 	 {
 	x=valoare2[pozvalid1]+$3;
 	 }
 	 
 }
  if(operator=='-') 
 {	operatii[nr++]='-';
 	 if((strcmp(tipvalid1,"int")==0))
 	 {
 	x=valoare1[pozvalid1]-$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0))
 	 {
 	x=valoare2[pozvalid1]-$3;
 	 }
 	 
 }
  if(operator==':') 
 {	
 operatii[nr++]=':';
 	  if((strcmp(tipvalid1,"int")==0) && $3!=0)
 	 {
 	x=valoare1[pozvalid1]/$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0)&& $3!=0)
 	 {
 	x=valoare2[pozvalid1]/$3;
 	 }
 	 if($1==0)
 	 {
 	 	yyerror("nu se poate realiza impartirea");
 	 }
 	 
 }
  if(operator=='*') 
 {	
 operatii[nr++]='*';
 	 if((strcmp(tipvalid1,"int")==0))
 	 {
 	x=valoare1[pozvalid1]*$3;
 	 }
 	 else if((strcmp(tipvalid1,"float")==0))
 	 {
 	x=valoare2[pozvalid1]*$3;
 	 }
 	 
 }
   if(operator=='%') 
 {	
 operatii[nr++]='%';
 	yyerror("Nu se poate realiza modulul"); 
 }
if(strcmp(tip[pozvalid1],"float")==0)
{
	char uc[10];
 gcvt($3, 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
 }
 |NR1 FORM1 NR1
 {
 nr1=0;
vv=$1;

while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
 if(operator=='+') 
 {	
 	 operatii[nr++]='+';
 	x=$1+$3;
 	 
 }
  if(operator=='-') 
 {	
operatii[nr++]='-';
 	x=$1-$3;
 	 
 }
  if(operator==':') 
 {	
 operatii[nr++]=':';
 	 x=$1/$3;
 	 
 }
  if(operator=='*') 
 {	
operatii[nr++]='*';
 	 x=$1*$3;
 	 
 }
   if(operator=='%') 
 {	
operatii[nr++]='%';
 	 x=$1%$3; 
 }
nr1=0;
vv=$3;

while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
 }
 |NR1 FORM1 NR2
 {
nr1=0;
vv=$1;

while(vv)
{
	uc=vv%10;
	if(uc==0)
		s_1[nr1++]='0';
	else if(uc==1)
		s_1[nr1++]='1';
	else if(uc==2)
		s_1[nr1++]='2';
	else if(uc==3)
		s_1[nr1++]='3';
	else if(uc==4)
		s_1[nr1++]='4';
	else if(uc==5)
		s_1[nr1++]='5';
	else if(uc==6)
		s_1[nr1++]='6';
	else if(uc==7)
		s_1[nr1++]='7';
	else if(uc==8)
		s_1[nr1++]='8';
	else if(uc==9)
		s_1[nr1++]='9';
	vv=vv/10;
}
for(int i=nr1-1;i>=0;i--)
{
	operatii[nr++]=s_1[i];
}
 if(operator=='+') 
 {	
 	 operatii[nr++]='+';
 	x=$1+$3;
 	 
 }
  if(operator=='-') 
 {	operatii[nr++]='-';
 	x=$1-$3;
 	 
 }
  if(operator==':') 
 {	
 operatii[nr++]=':';
 	 x=$1/$3;
 	 
 }
  if(operator=='*') 
 {	operatii[nr++]='*';
 	 x=$1*$3;
 	 
 }
   if(operator=='%') 
 {	
 operatii[nr++]='%';
 	yyerror("Nu se poate realiza modulul");
 }
if(strcmp(tip[pozvalid1],"float")==0)
{
	char uc[10];

 gcvt($3, 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
 }
 |NR2 FORM1 NR2
 {
if(strcmp(tip[pozvalid1],"float")==0)
{
	char uc[10];

 gcvt($1, 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
 if(operator=='+') 
 {	
 	 operatii[nr++]='+';
 	x=$1+$3;
 	 
 }
  if(operator=='-') 
 {	operatii[nr++]='-';
 	x=$1-$3;
 	 
 }
  if(operator==':') 
 {	
 operatii[nr++]=':';
 	 x=$1/$3;
 	 
 }
  if(operator=='*') 
 {	operatii[nr++]='*';
 	 x=$1*$3;
 	 
 }
   if(operator=='%') 
 {	
 operatii[nr++]='%';
 	yyerror("Nu se poate realiza modulul");
 }
if(strcmp(tip[pozvalid1],"float")==0)
{
	char uc[10];

 gcvt($3, 5,uc );
 for(int i=0;i<strlen(uc);i++)
 {
 	operatii[nr++]=uc[i];
 }
}
 }
 ;
 
 
 
 EXPRESIE_BOOLEAN: EXPRESIE_ARITMETICA{nr=0;vx=evalueaza_exp(operatii);} L EXPRESIE_ARITMETICA{ nr=0;int VX=evalueaza_exp(operatii);
 
if(vx<VX) x=1;
else x=0;


 }
 
 |EXPRESIE_ARITMETICA{nr=0;vx=evalueaza_exp(operatii);} G EXPRESIE_ARITMETICA{ nr=0;int VX=evalueaza_exp(operatii);
 
if(vx>VX) x=1;
else x=0;


 
 }
  |EXPRESIE_ARITMETICA{nr=0;vx=evalueaza_exp(operatii);} GE EXPRESIE_ARITMETICA{ nr=0;int VX=evalueaza_exp(operatii);
 
if(vx>=VX) x=1;
else x=0;


 }
 |EXPRESIE_ARITMETICA{nr=0;vx=evalueaza_exp(operatii);} LE EXPRESIE_ARITMETICA{nr=0;int VX=evalueaza_exp(operatii);
 
if(vx<=VX) x=1;
else x=0;


 
 }
 |EXPRESIE_ARITMETICA{nr=0;vx=evalueaza_exp(operatii);} EQ EXPRESIE_ARITMETICA{nr=0;int VX=evalueaza_exp(operatii);
 
if(vx==VX) x=1;
else x=0;


 
 }
 |EXPRESIE_ARITMETICA{nr=0;vx=evalueaza_exp(operatii);} NE EXPRESIE_ARITMETICA{ nr=0;int VX=evalueaza_exp(operatii);

if(vx!=VX) x=1;
else x=0;

 }

  |NR1 L EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1<vx) x=1;
else x=0;


 
 }
 |NR1 G EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1>vx) x=1;
else x=0;


 
 }
 |NR1 LE EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1<=vx) x=1;
else x=0;


 
 }
 |NR1 GE EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1>=vx) x=1;
else x=0;


 
 }
 |NR1 NE EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1!=vx) x=1;
else x=0;


 
 }
 |NR1 EQ EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1==vx) x=1;
else x=0;


 
 }
 
  |NR2 L EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1<vx) x=1;
else x=0;


 
 }
 |NR2 G EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1>vx) x=1;
else x=0;


 
 }
 |NR2 LE EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1<=vx) x=1;
else x=0;


 
 }
 |NR2 GE EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1>=vx) x=1;
else x=0;


 
 }
 |NR2 NE EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1!=vx) x=1;
else x=0;


 
 }
 |NR2 EQ EXPRESIE_ARITMETICA {nr=0;vx=evalueaza_exp(operatii);
 
if($1==vx) x=1;
else x=0;


 
 }

 
 |ID L ID
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($3))==0)
   {valid2=1; pozvalid2=i;strcpy(tipvalid2,tip[i]);}
 
 }
 if(pozvalid2==0){yyerror("nu e declarata variabila");break;}

 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare1[pozvalid1]<valoare1[pozvalid2])
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare1[pozvalid1]<valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare2[pozvalid1]<valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare2[pozvalid1]<valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare6[pozvalid1]<valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare7[pozvalid1]<valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const float")==0)){
 if(valoare1[pozvalid1]<valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare1[pozvalid1]<valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |ID G ID
 {numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($3))==0)
   {valid2=1; pozvalid2=i;strcpy(tipvalid2,tip[i]);}
 
 }
 if(pozvalid2==0){yyerror("nu e declarata variabila");break;}

 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare1[pozvalid1]>valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare1[pozvalid1]>valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare2[pozvalid1]>valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare2[pozvalid1]>valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare6[pozvalid1]>valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare7[pozvalid1]>valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const float")==0)){
 if(valoare1[pozvalid1]>valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare1[pozvalid1]>valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |ID L NR1
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 
 }
 |NR1 L NR1
 {
 numara_expresii++;
 if($1<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR1 L NR2
 {
 numara_expresii++;
 if($1<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
  |NR2 L NR2
 {
 numara_expresii++;
 if($1<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR2 L NR1
 {
 numara_expresii++;
 if($1<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |ID L NR2
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]<$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 
 |ID G NR1
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 
 }
 |ID G NR2
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |NR1 G NR1
 {
 numara_expresii++;
 if($1>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR1 G NR2
 {
 numara_expresii++;
 if($1>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
  |NR2 G NR2
 {
 numara_expresii++;
 if($1>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR2 G NR1
 {
 numara_expresii++;
 if($1>$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |ID GE ID
 {numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($3))==0)
   {valid2=1; pozvalid2=i;strcpy(tipvalid2,tip[i]);}
 
 }
 if(pozvalid2==0){yyerror("nu e declarata variabila");break;}

 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare1[pozvalid1]>=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare1[pozvalid1]>=valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare2[pozvalid1]>=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare2[pozvalid1]>=valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare6[pozvalid1]>=valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare7[pozvalid1]>=valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const float")==0)){
 if(valoare1[pozvalid1]>=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare1[pozvalid1]>=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |ID GE NR1
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 
 }
 |ID GE NR2
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |NR1 GE NR1
 {
 numara_expresii++;
 if($1>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR1 GE NR2
 {
 numara_expresii++;
 if($1>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
  |NR2 GE NR2
 {
 numara_expresii++;
 if($1>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR2 GE NR1
 {
 numara_expresii++;
 if($1>=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |ID LE ID
 {numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($3))==0)
   {valid2=1; pozvalid2=i;strcpy(tipvalid2,tip[i]);}
 
 }
 if(pozvalid2==0){yyerror("nu e declarata variabila");break;}

 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare1[pozvalid1]<=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare1[pozvalid1]<=valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare2[pozvalid1]<=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare2[pozvalid1]<=valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare6[pozvalid1]<=valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare7[pozvalid1]<=valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const float")==0)){
 if(valoare1[pozvalid1]<=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare1[pozvalid1]<=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |ID LE NR1
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 
 }
 |ID LE NR2
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |NR1 LE NR1
 {
 numara_expresii++;
 if($1<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR1 LE NR2
 {
 numara_expresii++;
 if($1<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
  |NR2 LE NR2
 {
 numara_expresii++;
 if($1<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR2 LE NR1
 {
 numara_expresii++;
 if($1<=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |ID EQ ID
 {numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($3))==0)
   {valid2=1; pozvalid2=i;strcpy(tipvalid2,tip[i]);}
 
 }
 if(pozvalid2==0){yyerror("nu e declarata variabila");break;}

 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare1[pozvalid1]==valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare1[pozvalid1]==valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare2[pozvalid1]==valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare2[pozvalid1]==valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare6[pozvalid1]==valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare7[pozvalid1]==valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const float")==0)){
 if(valoare1[pozvalid1]==valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare1[pozvalid1]==valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |ID EQ NR1
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 
 }
 |ID EQ NR2
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |NR1 EQ NR1
 {
 numara_expresii++;
 if($1==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR1 EQ NR2
 {
 numara_expresii++;
 if($1==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
  |NR2 EQ NR2
 {
 numara_expresii++;
 if($1==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR2 EQ NR1
 {
 numara_expresii++;
 if($1==$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |ID NE ID
 {numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($3))==0)
   {valid2=1; pozvalid2=i;strcpy(tipvalid2,tip[i]);}
 
 }
 if(pozvalid2==0){yyerror("nu e declarata variabila");break;}

 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare1[pozvalid1]!=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"int")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare1[pozvalid1]!=valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"int")==0)){
 if(valoare2[pozvalid1]!=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"float")==0)&&(strcmp(tipvalid2,"float")==0)){
 if(valoare2[pozvalid1]!=valoare2[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare6[pozvalid1]!=valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare7[pozvalid1]!=valoare6[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const float")==0)&&(strcmp(tipvalid2,"const float")==0)){
 if(valoare1[pozvalid1]!=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 if((strcmp(tipvalid1,"const int")==0)&&(strcmp(tipvalid2,"const int")==0)){
 if(valoare1[pozvalid1]!=valoare1[pozvalid2])
  {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |ID NE NR1
 {

 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 cond[0]=valoare1[pozvalid1]+'0';
 cond[1]='!';
 cond[2]=$3+'0';
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 
 }
 |ID NE NR2
 {
 numara_expresii++;
 for(int i=0;i<count;i++)
 {
 
 if(strcmp(nume[i],strdup($1))==0)
   {valid1=1; pozvalid1=i;strcpy(tipvalid1,tip[i]);}
 
 }
 if(valid1==0) {yyerror("nu e declarata variabila");break;}
 

 if((strcmp(tipvalid1,"int")==0)){
 if(valoare1[pozvalid1]!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 else
 if((strcmp(tipvalid1,"float")==0)){
 if(valoare1[pozvalid1]!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 }
 |NR1 NE NR1
 {
 numara_expresii++;
 if($1!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR1 NE NR2
 {
 numara_expresii++;
 if($1!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
  |NR2 NE NR2
 {
 numara_expresii++;
 if($1!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 |NR2 NE NR1
 {
 numara_expresii++;
 if($1!=$3)
 {if(numara_expresii==1) x=1; else X=1;}
 else
 {if(numara_expresii==1)x=0;else X=0;}
 }
 ;

      
lista_param1:  lista_param1 FORM11 VAL1
 		|  VAL1   
 
 ;
lista_param : caract1
            | lista_param ','  caract1
            | lista_param ',' caract11 ASSIGN valoare1
             | lista_param FORM '(' EXPRESIE_BOOLEAN ')'  {calculeaza(&x,X,calc);}
            | lista_param ',' caract11 ASSIGN SQRT_TYPE '[' valoare22 ']' 
            | lista_param ',' caract11 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare2222 ']'
            | lista_param ',' caract11 ASSIGN ABS_TYPE '[' valoare22222 ']' 
            | lista_param ',' caract11 ASSIGN LOG_TYPE '[' valoare222222 ']' 
            |caract11 ASSIGN valoare1
            | caract11 ASSIGN SQRT_TYPE '[' valoare22 ']' 
            |caract11 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare2222 ']'
            |caract11 ASSIGN ABS_TYPE '[' valoare22222 ']' 
            |caract11 ASSIGN LOG_TYPE '[' valoare222222 ']' 
            | '(' EXPRESIE_BOOLEAN ')'   {calculeaza(&x,X,calc);} 

            ; 
IID3: ID3 {strcpy(vect,strdup($1));};           
valoare1 : NR1 {x=$1;};
valoare01: NR1 {x1=$1;};
valoare22 : NR1 {x=$1; x=sqrt(x);}
valoare2222: NR1{ x=pow(x,$1); }
valoare22222: NR1 {x=abs(x);}
valoare222222: NR1 {x=log(x);}
      ; 
caract1 : ID {if(diferit(strdup($1))==1) {atribuire("int",strdup($1));atribuire_bydefault1(strdup($1));}}
caract11 : ID {if(diferit(strdup($1))==1) {atribuire("int",strdup($1));atribuire1(strdup($1),x);}}
;
      
declaratie2: FLOAT_TYPE ID ',' lista_param2 {if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire_bydefault2(strdup($2));}}
           | FLOAT_TYPE ID ASSIGN valoare2 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
		| FLOAT_TYPE ID ASSIGN PII {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));if(okk==1) atribuire2(strdup($2),PI); else yyerror("nu ati declarat biblioteca");}}          
 | FLOAT_TYPE  ID ASSIGN SQRT_TYPE '[' valoare33 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
            | FLOAT_TYPE  ID ASSIGN ABS_TYPE '|' valoare33333 '|' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
             | FLOAT_TYPE  ID ASSIGN LOG_TYPE '[' valoare333333 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
            | FLOAT_TYPE ID ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare3333 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
           | FLOAT_TYPE ID {strcpy(v,strdup($2));if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault2(strdup($2));}}
           | FLOAT_TYPE ID ASSIGN valoare2 ',' lista_param2 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
      	| FLOAT_TYPE ID ASSIGN PII ',' lista_param2 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));if(okk==1) atribuire2(strdup($2),PI); else yyerror("nu ati declarat biblioteca");}}    
	 |FLOAT_TYPE ID ASSIGN SQRT_TYPE '[' valoare33 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
           |FLOAT_TYPE  ID ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare3333 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
            |FLOAT_TYPE  ID ASSIGN ABS_TYPE '|' valoare33333 '|' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
            |FLOAT_TYPE ID ASSIGN LOG_TYPE '[' valoare333333 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire2(strdup($2),y);}}
              | FLOAT_TYPE IIID3 '{' valoare11 '}' {if(diferit(vect)==1) {atribuire(strdup($1),vect);atribuire_bydefault02(vect,x);}}
            | FLOAT_TYPE IIID3 '{' valoare11 '}' ASSIGN '{' next_val '}' {if(diferit(vect)==1) {atribuire(strdup($1),vect);atribuire02(vect,x,y);}}
           ;

 next_val: valoare2 {atribuire02(vect,x,y);}
 	  |next_val ',' valoare2 {atribuire02(vect,x,y);} 
; 	  
IIID3: ID3 {strcpy(vect,strdup($1));};  
lista_param2 : caract2
            | lista_param2 ','  caract2
            | lista_param2 ',' caract22 ASSIGN valoare2
	        | lista_param2 ',' caract22 ASSIGN pval
            | lista_param2 ',' caract22 ASSIGN SQRT_TYPE '[' valoare33 ']' 
            | lista_param2 ',' caract22 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare3333 ']'
            | lista_param2 ',' caract22 ASSIGN ABS_TYPE '[' valoare33333 ']' 
            | lista_param2 ',' caract22 ASSIGN LOG_TYPE '[' valoare333333 ']' 
            | caract22 ASSIGN valoare2
            | caract22 ASSIGN pval
            | caract22 ASSIGN SQRT_TYPE '[' valoare33 ']' 
            |caract22 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare3333 ']'
            |caract22 ASSIGN ABS_TYPE '[' valoare33333 ']' 
            |caract22 ASSIGN LOG_TYPE '[' valoare333333 ']' 
            ;            
valoare2 : NR2{y=$1;}; 
valoare11: NR1{x=$1;};
pval: PII{y=PI;}; 
valoare33 : NR2 {y=$1; y=sqrt(y);};
valoare3333: NR2{ y=pow(y,$1); };
valoare33333: NR2 {y=abs(y);};
valoare333333: NR2 {y=log(y);};
caract2 : ID {if(diferit(strdup($1))==1) {atribuire("float",strdup($1));atribuire_bydefault2(strdup($1));}}
caract22: ID {if(diferit(strdup($1))==1) {atribuire("float",strdup($1));atribuire2(strdup($1),y);}}
;                  

declaratie3:STRING_TYPE ID '{' dimensiune '}' ASSIGN cuvant { if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire5(strdup($2),z);}}
	   | STRING_TYPE ID '{' dimensiune '}' ASSIGN cuvant ',' lista_param3 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire5(strdup($2),z);}}
           | STRING_TYPE ID '{' dimensiune '}'  {strcpy(v,strdup($2));if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault3(strdup($2));}}
           | STRING_TYPE ID '{' dimensiune '}'  ','lista_param3 {if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire_bydefault3(strdup($2));}}
           ;
lista_param3 : caract3
            | lista_param3 ','  caract3
            | lista_param3 ',' caract33 ASSIGN cuvant
            | caract33 ASSIGN cuvant
            ;                
cuvant :  SIR{strcpy(z,strdup($1));if(strlen(z)>Z) {yyerror("Spatiu insuficient alocat la string");okZ=0;}}
      ;  
dimensiune: NR1 {Z=$1;};   
caract3 : ID '{' dimensiune '}'{if(diferit(strdup($1))==1) {atribuire("string",strdup($1));atribuire_bydefault3(strdup($1));}}
caract33: ID '{' dimensiune '}'{if(diferit(strdup($1))==1) {atribuire("string",strdup($1));atribuire5(strdup($1),z);}}
;                  
      
      
 declaratie4:CHAR_TYPE ID ASSIGN caracter {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire4(strdup($2),w);}}
           | CHAR_TYPE ID {strcpy(v,strdup($2));if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault4(strdup($2));}}
           | CHAR_TYPE ID ASSIGN caracter ',' lista_param4 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire4(strdup($2),w);}}
           |CHAR_TYPE ID ',' lista_param4 {if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire_bydefault4(strdup($2));}}
           ;
lista_param4 : caract4
            | lista_param4 ','  caract4
            | lista_param4 ',' caract44 ASSIGN caracter
            | caract44 ASSIGN caracter
            ;               
caracter  : CHR{strcpy(w,strdup($1));}
            ;  
 caract4 : ID {if(diferit(strdup($1))==1) {atribuire("char",strdup($1));atribuire_bydefault4(strdup($1));}}
 caract44:ID {if(diferit(strdup($1))==1) {atribuire("char",strdup($1));atribuire4(strdup($1),w);}}
;       
 declaratie5:BOOL_TYPE ID ASSIGN bl {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire3(strdup($2),t);}}
           | BOOL_TYPE ID {strcpy(v,strdup($2));if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault5(strdup($2));}}
           | BOOL_TYPE ID ASSIGN bl ',' lista_param5 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire3(strdup($2),t);}}
           | BOOL_TYPE ID ',' lista_param5 {if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire_bydefault5(strdup($2));}}
           ;
lista_param5 : caract5
            | lista_param5 ','  caract5
            | lista_param5 ',' caract55 ASSIGN bl
            | caract55 ASSIGN bl
            ;               
bl  : BOOL{t=$1;}
      ; 
caract5 : ID {if(diferit(strdup($1))==1) {atribuire("bool",strdup($1));atribuire_bydefault5(strdup($1));}}
caract55: ID {if(diferit(strdup($1))==1) {atribuire("bool",strdup($1));atribuire3(strdup($1),t);}}
;  



     
declaratie6: CINT_TYPE ID2 ',' lista_param6{if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault6(strdup($2));}}
           | CINT_TYPE ID2 ASSIGN valoare6 {if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
           | CINT_TYPE ID2 ASSIGN SQRT_TYPE '[' valoare66 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
            | CINT_TYPE ID2 ASSIGN ABS_TYPE '|' valoare66666 '|' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
             | CINT_TYPE ID2 ASSIGN LOG_TYPE '[' valoare666666 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
            | CINT_TYPE ID2 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare6666 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
           | CINT_TYPE ID2 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault6(strdup($2));}}
           | CINT_TYPE ID2 ASSIGN valoare6 ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
           |CINT_TYPE ID2 ASSIGN SQRT_TYPE '[' valoare66 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
           |CINT_TYPE ID2 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare6666 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
            |CINT_TYPE ID2 ASSIGN ABS_TYPE '|' valoare66666 '|' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
            |CINT_TYPE ID2 ASSIGN LOG_TYPE '[' valoare666666 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire6(strdup($2),tt);}}
           
           ;            
lista_param6 : caract6
            | lista_param6 ','  caract6
            | lista_param6 ',' caract66 ASSIGN valoare6
             | lista_param6 ',' caract66 ASSIGN SQRT_TYPE '[' valoare66 ']' 
            | lista_param6 ',' caract66 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare6666 ']'
            | lista_param6 ',' caract66 ASSIGN ABS_TYPE '[' valoare66666 ']' 
            | lista_param6 ',' caract66 ASSIGN LOG_TYPE '[' valoare666666 ']' 
            | caract66 ASSIGN valoare6
             | caract66 ASSIGN SQRT_TYPE '[' valoare66 ']' 
            |caract66 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare6666 ']'
            |caract66 ASSIGN ABS_TYPE '[' valoare66666 ']' 
            |caract66 ASSIGN LOG_TYPE '[' valoare666666 ']' 
            ;            
valoare6 : NR1{tt=$1;}
valoare66 : NR1 {tt=$1; tt=sqrt(tt);}
valoare6666: NR1{ tt=pow(tt,$1); }
valoare66666: NR1 {tt=abs(tt);}
valoare666666: NR1 {tt=log(tt);}
      ; 
caract6 : ID2 {if(diferit(strdup($1))==1) {atribuire("const int",strdup($1));atribuire_bydefault6(strdup($1));}}
caract66: ID2 {if(diferit(strdup($1))==1) {atribuire("const int",strdup($1));atribuire6(strdup($1),tt);}}
;  

declaratie7: CFLOAT_TYPE ID2 ',' lista_param7 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault7(strdup($2));}}
           | CFLOAT_TYPE ID2 ASSIGN valoare7 { if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
           | CFLOAT_TYPE  ID2 ASSIGN SQRT_TYPE '[' valoare77 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
            | CFLOAT_TYPE  ID2 ASSIGN ABS_TYPE '|' valoare77777 '|' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
             | CFLOAT_TYPE  ID2 ASSIGN LOG_TYPE '[' valoare777777 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
            | CFLOAT_TYPE ID2 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare7777 ']' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
           | CFLOAT_TYPE ID2{if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault7(strdup($2));}}
           | CFLOAT_TYPE ID2 ASSIGN valoare7 ',' lista_param7 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
           |CFLOAT_TYPE ID2 ASSIGN SQRT_TYPE '[' valoare77 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
           |CFLOAT_TYPE  ID2 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare7777 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
            |CFLOAT_TYPE  ID2 ASSIGN ABS_TYPE '|' valoare77777 '|' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
            |CFLOAT_TYPE ID2 ASSIGN LOG_TYPE '[' valoare777777 ']' ',' lista_param {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire7(strdup($2),xx);}}
           ;
lista_param7 : caract7
            | lista_param7 ','  caract7
            | lista_param7 ',' caract77 ASSIGN valoare7
             | lista_param7 ',' caract77 ASSIGN SQRT_TYPE '[' valoare77 ']' 
            | lista_param7 ',' caract77 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare7777 ']'
            | lista_param7 ',' caract77 ASSIGN ABS_TYPE '[' valoare77777 ']' 
            | lista_param7 ',' caract77 ASSIGN LOG_TYPE '[' valoare777777 ']' 
            | caract77 ASSIGN valoare7
            | caract77 ASSIGN SQRT_TYPE '[' valoare77 ']' 
            |caract77 ASSIGN POW_TYPE '[' valoare1 ']' '^' '[' valoare7777 ']'
            |caract77 ASSIGN ABS_TYPE '[' valoare77777 ']' 
            |caract77 ASSIGN LOG_TYPE '[' valoare777777 ']' 
            ;            
valoare7 : NR2{xx=$1;}
valoare77 : NR2 {xx=$1; xx=sqrt(xx);}
valoare7777: NR2{ xx=pow(xx,$1); }
valoare77777: NR2 {xx=abs(xx);}
valoare777777: NR2 {xx=log(xx);}
      ; 
caract7 : ID2 {if(diferit(strdup($1))==1) {atribuire("const float",strdup($1));atribuire_bydefault7(strdup($1));}}
caract77: ID2 {if(diferit(strdup($1))==1) {atribuire("const float",strdup($1));atribuire7(strdup($1),xx);}}
;                  
    
declaratie8:CSTRING_TYPE ID2 '{' dimensiune1 '}' ASSIGN cuvant2 { if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire8(strdup($2),zz);}}
	   | CSTRING_TYPE ID2 '{' dimensiune1 '}' ASSIGN cuvant2 ',' lista_param8 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire8(strdup($2),zz);}}
           | CSTRING_TYPE ID2 '{' dimensiune1 '}' {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault8(strdup($2));}}
           | CSTRING_TYPE ID2  '{' dimensiune1 '}' ','lista_param8 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault8(strdup($2));}}
           ;
lista_param8 : caract8
            | lista_param8 ','  caract8
            | lista_param8 ',' caract88 ASSIGN cuvant2
            | caract88 ASSIGN cuvant2
            ;                
cuvant2 :  SIR{strcpy(zz,strdup($1));if(strlen(zz)>ZZ) {yyerror("Spatiu insuficient alocat la string");validarePRINT=0;okZZ=0;}}
dimensiune1: NR1 {ZZ=$1;};   
caract8 : ID2 '{' dimensiune1 '}'{if(diferit(strdup($1))==1) {atribuire("const string",strdup($1));atribuire_bydefault8(strdup($1));}};
caract88: ID2 '{' dimensiune1 '}' {if(diferit(strdup($1))==1) {atribuire("const string",strdup($1));atribuire8(strdup($1),zz);}}
;                  
      
      
 declaratie9:CCHAR_TYPE ID2 ASSIGN caracter2 { if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire9(strdup($2),ww);}}
           | CCHAR_TYPE ID2 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault9(strdup($2));}}
           | CCHAR_TYPE ID2 ASSIGN caracter2 ',' lista_param9 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire9(strdup($2),ww);}}
           |CCHAR_TYPE ID2 ',' lista_param9 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault9(strdup($2));}}
           ;
lista_param9 : caract9
            | lista_param9 ','  caract9
            | lista_param9 ',' caract99 ASSIGN caracter2
            | caract99 ASSIGN caracter2
            ;               
caracter2  : CHR{strcpy(ww,strdup($1));}
            ;  
 caract9 : ID2 {if(diferit(strdup($1))==1) {atribuire("const char",strdup($1));atribuire_bydefault9(strdup($1));}}
 caract99: ID2 {if(diferit(strdup($1))==1) {atribuire("const char",strdup($1));atribuire9(strdup($1),ww);}}
;        
 declaratie10:CBOOL_TYPE ID2 ASSIGN bl2 { if(diferit(strdup($2))==1){ atribuire(strdup($1),strdup($2));atribuire10(strdup($2),qq);}}
           | CBOOL_TYPE ID2 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault10(strdup($2));}}
           | CBOOL_TYPE ID2 ASSIGN bl2 ',' lista_param10 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire10(strdup($2),qq);}}
           | CBOOL_TYPE ID2 ',' lista_param10 {if(diferit(strdup($2))==1) {atribuire(strdup($1),strdup($2));atribuire_bydefault10(strdup($2));}}
           ;
lista_param10 : caract10
            | lista_param10 ','  caract10
            | lista_param10 ',' caract10 ASSIGN bl2
            | caract100 ASSIGN bl2
            ;               
bl2  : BOOL{qq=$1;}
      ; 
caract10 : ID2 {if(diferit(strdup($1))==1) {atribuire("const bool",strdup($1));atribuire_bydefault10(strdup($1));}}
caract100: ID2 {if(diferit(strdup($1))==1) {atribuire("const bool",strdup($1));atribuire10(strdup($1),qq);}}
;  
bloc : BGIN list END  
     ;
list :  statement ';' 
	|instructiune
     | list statement ';'
     | list instructiune
    
     ;
list1 :  statement1 ';' 
     | list1 statement1 ';'
     |instructiune
     | list1 instructiune
     ;
list2 :  statement2 ';' 
     | list2 statement2 ';'
     |instructiune
     | list2 instructiune
     ;
list3: statement3 ';'
	|list3 statement3 ';'
;
/* instructiune */
instructiune:IF '(' conditie ')'{if(x==1) kok=1; else kok=0; } '{' list1 '}' functie
	     |WHILE '(' conditie ')' {if(x==1) kok=1; else kok=0; } '{' list3 '}'  
;
functie:ELSE { if(x==0) kok==0;} '{' list2 '}'
	| ';' 

;
statement3:| PRINTF '(' afisare13 ')'
         | PRINTF '(' afisare3 ',' print3 ')'
         | PRINTF '(' afisare3 ',' expresie3 ')'
          |ID DEC {if(verificare(strdup($1))==1 && kok==1){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1dec(strdup($1));else atribuire2dec(strdup($1));}}}}
         |ID INC {if(verificare(strdup($1))==1 && kok==1){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1inc(strdup($1));else atribuire2inc(strdup($1));}}}}
;
afisare3: SIR{if(kok==1) {strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,0);}};  
afisare13:SIR{if(kok==1) {strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,1);}};

expresie3:EXPRESIE_ARITMETICA {if(kok==1){nr=0;x=evalueaza_exp(operatii);printf("%d\n",x);bzero(operatii,100);}}
	  |EXPRESIE_ARITMETICA FORM11 lista_param1 {if(kok==1){nr=0;rearanjeaza(operatii);x=evalAST(aranjat);bzero(operatii,100);printf("%d\n",x);}};
print3: ID {if(kok==1){  strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
           if(strcmp(tip[i],"int")==0)
           {
           int qa=cond[0]-'0',wa=cond[2]-'0';
          //printf("-------%c\n",cond[0]);
           //printf("-------%c\n",cond[2]);
          int nrm=0;
          while(qa!=wa)
          {
          nrm++;
          if(nrm==1) printf("%d\n",qa);
          else 
           	printf("%s=:%d\n",nume[i],qa); 
           qa--;
          }
           break;
           }
           else
           if(strcmp(tip[i],"float")==0)
            {printf("%lf\n",valoare2[i]); break;}
           else
           if(strcmp(tip[i],"string")==0)
            {
            if(okZ==1){
            strcpy(valoare5[i],valoare5[i]+1);
            strcpy(valoare5[i]+(strlen(valoare5[i])-1),valoare5[i]+(strlen(valoare5[i])-1)+1);
            printf("%s\n",valoare5[i]); break;
            }
            else
            if(okZ==0)
            printf("\n");
            
            }
            else
           if(strcmp(tip[i],"char")==0)
            {
            
            strcpy(valoare4[i],valoare4[i]+1);
            strcpy(valoare4[i]+(strlen(valoare4[i])-1),valoare4[i]+(strlen(valoare4[i])-1)+1);
            printf("%s\n",valoare4[i]);
            break;
            }
            else
           if(strcmp(tip[i],"bool")==0)
           { printf("%d\n",valoare3[i]); break;}
           else
           if(strcmp(tip[i],"const int")==0)
           {
           
           printf("%d\n",valoare6[i]);break;
           }
           }
           }
           
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          }
          };
lista_valori:valoare
	     |lista_valori ',' valoare
;
valoare:NR1{tp[kt]='i';pvaloare[yt]=$1;yt++;kt++;}
	|NR2{tp[kt]='f';pfvaloare[yt]=$1;yt++;kt++;}
	|SIR{tp[kt]='s';kt++;}
	|CHR{tp[kt]='c';kt++;}
;
ID_1:ID{strcpy(id_1,strdup($1));}
;
statement:ID ASSIGN ID_1 {kt=0;}'(' lista_valori ')' {if(ver(id_1,"int")==1) ok_f=1;else yyerror("Eroare la apel:tipul parametrilor nu coincide");if(ok_f==1) {int nou_count=vrf(id_1); printf("%s",sir_cuvinte[nou_count+1]);atribuire1(strdup($1),val_f);} }
	  |ID_1 {kt=0;}'(' lista_valori ')' {if(ver(id_1,"void")==1) ok_f=1;else yyerror("Eroare la apel:tipul parametrilor nu coincide");if(ok_f==1){int nou_count=vrf(id_1); printf("%s",sir_cuvinte[nou_count+1]);} }
	  |ID ASSIGN NR1 {if(verificare(strdup($1))==1 ){atribuire1(strdup($1),$3);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA {bzero(operatii,100);if(verificare(strdup($1))==1) {atribuire1(strdup($1),x);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA FORM11 lista_param1 {nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);if(verificare(strdup($1))==1) {atribuire1(strdup($1),x);}}
         |ID DEC {if(verificare(strdup($1))==1){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1dec(strdup($1));else atribuire2dec(strdup($1));}}}}
         |ID INC {if(verificare(strdup($1))==1){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1inc(strdup($1));else atribuire2inc(strdup($1));}}}}
         | ID ASSIGN NR2 {if(verificare(strdup($1))==1){atribuire2(strdup($1),$3);}}
      	  | ID ASSIGN PII {if(verificare(strdup($1))==1){if(okk==1) atribuire2(strdup($1),PI); else yyerror("nu ati declarat biblioteca");}}  
	 | ID ASSIGN BOOL {if(verificare(strdup($1))==1&&($3==1||$3==0)){ atribuire3(strdup($1),$3);}else {yyerror("nu este o valoare bool");validarePRINT=0;}}
         | ID ASSIGN CHR {if(verificare(strdup($1))==1) atribuire4(strdup($1),strdup($3));}
         | ID ASSIGN SIR  {if(verificare(strdup($1))==1)atribuire5(strdup($1),strdup($3));}
         | ID2 ASSIGN NR1 {  yyerror("imposibil de asignat,avem tip const"); validarePRINT=0; }
         | ID2 ASSIGN NR2 {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN SIR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN CHR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN BOOL  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | IDD3 ASSIGN '{' next_valo '}' {if(verificare(vect)==1){contor--;atribuire001(vect,x1);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;} }
         | IDD3 ASSIGN '{' next_valor '}' {if(verificare(vect)==1){fcontor--;atribuire002(vect,y3);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;}}
         | ID ASSIGN IDD3 '{' valoare001 '}' {if(verificare_v(vect,x1)==1){;atribuire0(strdup($1),vect,x1);}else{yyerror("ati depasit limita vectorului");validarePRINT=0;}}
         |ID ASSIGN EXPRESIE_BOOLEAN {numara_expresii=0;if(verificare(strdup($1))==1) {atribuire1(strdup($1),x);}}
         |ID ASSIGN '('EXPRESIE_BOOLEAN ')' FORM '('EXPRESIE_BOOLEAN')' {calculeaza(&x,X,calc); if(verificare(strdup($1))==1) {numara_expresii=0;atribuire1(strdup($1),x);}}
         |ID ASSIGN '(' EXPRESIE_BOOLEAN ')' FORM '(' EXPRESIE_BOOLEAN ')' {calculeaza(&x,X,calc);} FORM lista_param {if(verificare(strdup($1))==1) {numara_expresii=0;atribuire1(strdup($1),x);}  }  
        
         | PRINTF '(' afisare1 ')'
         | PRINTF '(' afisare ',' print2 ')'
         | PRINTF '(' afisare ',' expresie1 ')'
         ;

statement1:ID ASSIGN NR1 {if(verificare(strdup($1))==1 && kok==1){atribuire1(strdup($1),$3);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA {bzero(operatii,100);if(verificare(strdup($1))==1 && kok==1) {atribuire1(strdup($1),x);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA FORM11 lista_param1 {nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);if(verificare(strdup($1))==1 && kok==1) {atribuire1(strdup($1),x);}}
         |ID DEC {if(verificare(strdup($1))==1 && kok==1){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1dec(strdup($1));else atribuire2dec(strdup($1));}}}}
         |ID INC {if(verificare(strdup($1))==1 && kok==1){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1inc(strdup($1));else atribuire2inc(strdup($1));}}}}
         | ID ASSIGN NR2 {if(verificare(strdup($1))==1 && kok==1){atribuire2(strdup($1),$3);}}
      	  | ID ASSIGN PII {if(verificare(strdup($1))==1 && kok==1){if(okk==1) atribuire2(strdup($1),PI); else yyerror("nu ati declarat biblioteca");}}  
	 | ID ASSIGN BOOL {if(verificare(strdup($1))==1&&($3==1||$3==0 && kok==1)){ atribuire3(strdup($1),$3);}else {yyerror("nu este o valoare bool");validarePRINT=0;}}
         | ID ASSIGN CHR {if(verificare(strdup($1))==1 && kok==1) atribuire4(strdup($1),strdup($3));}
         | ID ASSIGN SIR  {if(verificare(strdup($1))==1&& kok==1)atribuire5(strdup($1),strdup($3));}
         | ID2 ASSIGN NR1 {  yyerror("imposibil de asignat,avem tip const"); validarePRINT=0; }
         | ID2 ASSIGN NR2 {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN SIR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN CHR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN BOOL  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | IDD3 ASSIGN '{' next_valo '}' {if(verificare(vect)==1 && kok==1){contor--;atribuire001(vect,x1);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;} }
         | IDD3 ASSIGN '{' next_valor '}' {if(verificare(vect)==1 && kok==1){fcontor--;atribuire002(vect,y3);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;}}
         | ID ASSIGN IDD3 '{' valoare001 '}' {if(verificare_v(vect,x1)==1 && kok==1){;atribuire0(strdup($1),vect,x1);}else{yyerror("ati depasit limita vectorului");validarePRINT=0;}}
         |ID ASSIGN EXPRESIE_BOOLEAN {numara_expresii=0;if(verificare(strdup($1))==1 && kok==1) {atribuire1(strdup($1),x);}}
         |ID ASSIGN '('EXPRESIE_BOOLEAN ')' FORM '('EXPRESIE_BOOLEAN')' {calculeaza(&x,X,calc); if(verificare(strdup($1))==1 && kok==1) {numara_expresii=0;atribuire1(strdup($1),x);}}
         |ID ASSIGN '(' EXPRESIE_BOOLEAN ')' FORM '(' EXPRESIE_BOOLEAN ')' {calculeaza(&x,X,calc);} FORM lista_param {if((verificare(strdup($1))==1) && kok==1) {numara_expresii=0;atribuire1(strdup($1),x);}  }  
         |IF '(' conditie ')' '{' statement '}' {if(x==1) kok=1; else kok=0;}
         | PRINTF '(' afisare11 ')'
         | PRINTF '(' afisare01 ',' print02 ')'
         | PRINTF '(' afisare01 ',' expresie01 ')'
         ;
statement2:ID ASSIGN NR1 {if(verificare(strdup($1))==1 && kok==0){atribuire1(strdup($1),$3);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA {bzero(operatii,100);if(verificare(strdup($1))==1 && kok==1) {atribuire1(strdup($1),x);}}
	  |ID ASSIGN EXPRESIE_ARITMETICA FORM11 lista_param1 {nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);if(verificare(strdup($1))==1 && kok==1) {atribuire1(strdup($1),x);}}
         |ID DEC {if(verificare(strdup($1))==1 && kok==0){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1dec(strdup($1));else atribuire2dec(strdup($1));}}}}
         |ID INC {if(verificare(strdup($1))==1 && kok==0){for(int i=0;i<count;i++){ if(strcmp(nume[i],strdup($1))==0){if(strcmp(tip[i],"int")==0)atribuire1inc(strdup($1));else atribuire2inc(strdup($1));}}}}
         | ID ASSIGN NR2 {if(verificare(strdup($1))==1 && kok==0){atribuire2(strdup($1),$3);}}
      	  | ID ASSIGN PII {if(verificare(strdup($1))==1 && kok==0){if(okk==1) atribuire2(strdup($1),PI); else yyerror("nu ati declarat biblioteca");}}  
	 | ID ASSIGN BOOL {if(verificare(strdup($1))==1&&($3==1||$3==0 && kok==0)){ atribuire3(strdup($1),$3);}else {yyerror("nu este o valoare bool");validarePRINT=0;}}
         | ID ASSIGN CHR {if(verificare(strdup($1))==1 && kok==0) atribuire4(strdup($1),strdup($3));}
         | ID ASSIGN SIR  {if(verificare(strdup($1))==1&& kok==0)atribuire5(strdup($1),strdup($3));}
         | ID2 ASSIGN NR1 {  yyerror("imposibil de asignat,avem tip const"); validarePRINT=0; }
         | ID2 ASSIGN NR2 {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN SIR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN CHR  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | ID2 ASSIGN BOOL  {yyerror("imposibil de asignat,avem tip const");validarePRINT=0;}
         | IDD3 ASSIGN '{' next_valo '}' {if(verificare(vect)==1 && kok==0){contor--;atribuire001(vect,x1);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;} }
         | IDD3 ASSIGN '{' next_valor '}' {if(verificare(vect)==1 && kok==0){fcontor--;atribuire002(vect,y3);restabilire();} else{yyerror("nu ati declarat aceasta variabila ");validarePRINT=0;}}
         | ID ASSIGN IDD3 '{' valoare001 '}' {if(verificare_v(vect,x1)==1 && kok==0){;atribuire0(strdup($1),vect,x1);}else{yyerror("ati depasit limita vectorului");validarePRINT=0;}}
         |ID ASSIGN EXPRESIE_BOOLEAN {numara_expresii=0;if(verificare(strdup($1))==1 && kok==0) {atribuire1(strdup($1),x);}}
         |ID ASSIGN '('EXPRESIE_BOOLEAN ')' FORM '('EXPRESIE_BOOLEAN')' {calculeaza(&x,X,calc); if(verificare(strdup($1))==1 && kok==0) {numara_expresii=0;atribuire1(strdup($1),x);}}
         |ID ASSIGN '(' EXPRESIE_BOOLEAN ')' FORM '(' EXPRESIE_BOOLEAN ')' {calculeaza(&x,X,calc);} FORM lista_param {if((verificare(strdup($1))==1) && kok==0) {numara_expresii=0;atribuire1(strdup($1),x);}  }  
         |IF '(' conditie ')' '{' statement '}' {if(x==1) kok=1; else kok=0;}
         |WHILE '(' conditie ')' '{' statement '}' {if(x==1) kok=1; else kok=0; }
         | PRINTF '(' afisare111 ')'
         | PRINTF '(' afisare001 ',' print002 ')'
         | PRINTF '(' afisare001 ',' expresie001 ')'
         ;

conditie:EXPRESIE_BOOLEAN
	;


	      
next_valo: valoare001 {atribuire001(vect,x1);}
 	  |next_valo ',' valoare001 {atribuire001(vect,x1);} 
; 
next_valor: valoare002 {atribuire002(vect,y3);}
 	  |next_valor ',' valoare002 {atribuire002(vect,y3);} 
; 	
IDD3: ID3 {strcpy(vect,strdup($1));};           
valoare001: NR1 {x1=$1;}; 
valoare002: NR2 {y3=$1;}; 
afisare01: SIR{if(kok==1) {strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,0);}};  
afisare001: SIR{if(kok==0) {strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,0);}};  
afisare: SIR{strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,0);};
afisare1:SIR{strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,1);};
afisare11:SIR{if(kok==1) {strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,1);}};
afisare111:SIR{if(kok==0) {strcpy(c,strdup($1));if(validarePRINT==1)afisare_sir(c,1);}};
expresie01:EXPRESIE_ARITMETICA {if(kok==1){nr=0;x=evalueaza_exp(operatii);printf("%d\n",x);bzero(operatii,100);}}
	  |EXPRESIE_ARITMETICA FORM11 lista_param1 {if(kok==1){nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);printf("%d\n",x);}};
expresie001:EXPRESIE_ARITMETICA {if(kok==1){nr=0;x=evalueaza_exp(operatii);printf("%d\n",x);bzero(operatii,100);}}
	  |EXPRESIE_ARITMETICA FORM11 lista_param1 {if(kok==1){nr=0;x=evalueaza_exp(operatii);bzero(operatii,100);printf("%d\n",x);}};
expresie1:EXPRESIE_ARITMETICA {nr=0;x=evalueaza_exp(operatii);printf("%d\n",x);bzero(operatii,100);}
	  |EXPRESIE_ARITMETICA FORM11 lista_param1{ nr=0;rearanjeaza(operatii);x=evalAST(aranjat);bzero(operatii,100);printf("%d\n",x);};
print002: ID {if(kok==0){  strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
           if(strcmp(tip[i],"int")==0)
           {printf("%d\n",valoare1[i]); break;}
           else
           if(strcmp(tip[i],"float")==0)
            {printf("%lf\n",valoare2[i]); break;}
           else
           if(strcmp(tip[i],"string")==0)
            {
            if(okZ==1){
            strcpy(valoare5[i],valoare5[i]+1);
            strcpy(valoare5[i]+(strlen(valoare5[i])-1),valoare5[i]+(strlen(valoare5[i])-1)+1);
            printf("%s\n",valoare5[i]); break;
            }
            else
            if(okZ==0)
            printf("\n");
            
            }
            else
           if(strcmp(tip[i],"char")==0)
            {
            
            strcpy(valoare4[i],valoare4[i]+1);
            strcpy(valoare4[i]+(strlen(valoare4[i])-1),valoare4[i]+(strlen(valoare4[i])-1)+1);
            printf("%s\n",valoare4[i]);
            break;
            }
            else
           if(strcmp(tip[i],"bool")==0)
           { printf("%d\n",valoare3[i]); break;}
           else
           if(strcmp(tip[i],"const int")==0)
           {
           
           printf("%d\n",valoare6[i]);break;
           }
           }
           }
           
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          }
          }
          |ID2 {if(kok==1){ strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
          
           if(strcmp(tip[i],"const int")==0)
           {
           printf("%d\n",valoare6[i]);break;
           }
           else
            if(strcmp(tip[i],"const float")==0)
           {
          
           printf("%lf\n",valoare7[i]);break;
           }
           else
           if(strcmp(tip[i],"const string")==0)
            {
            if(okZZ==1){
             strcpy(valoare8[i]-1,valoare8[i]);
            strcpy(valoare8[i]+(strlen(valoare8[i])-1),valoare8[i]+(strlen(valoare8[i])-1)+1);
            printf("%s\n",valoare8[i]); break;
            }
            else
            printf("\n");
            
            }
            else
           if(strcmp(tip[i],"const char")==0)
            {
            
            strcpy(valoare9[i],valoare9[i]+1);
            strcpy(valoare9[i]+(strlen(valoare9[i])-1),valoare9[i]+(strlen(valoare9[i])-1)+1);
            printf("%s\n",valoare9[i]);
            break;
            }
            else
           if(strcmp(tip[i],"const bool")==0)
           { printf("%d\n",valoare10[i]); break;}
           }
           }
           
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          }
          }
          |ID3 {if(ok==1){ strcpy(v2,strdup($1));
           int j=0;
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         if(strcmp(nume[i],strdup($1))==0) 
           {  
               
           if(strcmp(tip[i],"int")==0)
           {
           		
           		if(nume[i][0]=='#') 
           		{
           		while(valoare01[i][j]!=-9999)
           		{
          		printf("%d ",valoare01[i][j]);
          		j++;
          		} 
          		j=0;
          		printf("\n");
          		}
           }
           if(strcmp(tip[i],"float")==0)
           {
           		if(nume[i][0]=='#') 
           		{
           		while(valoare02[i][j]!=-9999.000000)
           		{
          		printf("%lf ",valoare02[i][j]);
          		j++;
          		} 
          		j=0;
          		printf("\n");
          		}
           }
           }
           }
           }
           }
           }
          
          ;
print02: ID {if(kok==1){  strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
           if(strcmp(tip[i],"int")==0)
           {printf("%d\n",valoare1[i]); break;}
           else
           if(strcmp(tip[i],"float")==0)
            {printf("%lf\n",valoare2[i]); break;}
           else
           if(strcmp(tip[i],"string")==0)
            {
            if(okZ==1){
            strcpy(valoare5[i],valoare5[i]+1);
            strcpy(valoare5[i]+(strlen(valoare5[i])-1),valoare5[i]+(strlen(valoare5[i])-1)+1);
            printf("%s\n",valoare5[i]); break;
            }
            else
            if(okZ==0)
            printf("\n");
            
            }
            else
           if(strcmp(tip[i],"char")==0)
            {
            
            strcpy(valoare4[i],valoare4[i]+1);
            strcpy(valoare4[i]+(strlen(valoare4[i])-1),valoare4[i]+(strlen(valoare4[i])-1)+1);
            printf("%s\n",valoare4[i]);
            break;
            }
            else
           if(strcmp(tip[i],"bool")==0)
           { printf("%d\n",valoare3[i]); break;}
           else
           if(strcmp(tip[i],"const int")==0)
           {
           
           printf("%d\n",valoare6[i]);break;
           }
           }
           }
           
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          }
          }
          |ID2 {if(kok==1){ strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
          
           if(strcmp(tip[i],"const int")==0)
           {
           printf("%d\n",valoare6[i]);break;
           }
           else
            if(strcmp(tip[i],"const float")==0)
           {
          
           printf("%lf\n",valoare7[i]);break;
           }
           else
           if(strcmp(tip[i],"const string")==0)
            {
            if(okZZ==1){
             strcpy(valoare8[i]-1,valoare8[i]);
            strcpy(valoare8[i]+(strlen(valoare8[i])-1),valoare8[i]+(strlen(valoare8[i])-1)+1);
            printf("%s\n",valoare8[i]); break;
            }
            else
            printf("\n");
            
            }
            else
           if(strcmp(tip[i],"const char")==0)
            {
            
            strcpy(valoare9[i],valoare9[i]+1);
            strcpy(valoare9[i]+(strlen(valoare9[i])-1),valoare9[i]+(strlen(valoare9[i])-1)+1);
            printf("%s\n",valoare9[i]);
            break;
            }
            else
           if(strcmp(tip[i],"const bool")==0)
           { printf("%d\n",valoare10[i]); break;}
           }
           }
           
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          }
          }
          |ID3 {if(ok==1){ strcpy(v2,strdup($1));
           int j=0;
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         if(strcmp(nume[i],strdup($1))==0) 
           {  
               
           if(strcmp(tip[i],"int")==0)
           {
           		
           		if(nume[i][0]=='#') 
           		{
           		while(valoare01[i][j]!=-9999)
           		{
          		printf("%d ",valoare01[i][j]);
          		j++;
          		} 
          		j=0;
          		printf("\n");
          		}
           }
           if(strcmp(tip[i],"float")==0)
           {
           		if(nume[i][0]=='#') 
           		{
           		while(valoare02[i][j]!=-9999.000000)
           		{
          		printf("%lf ",valoare02[i][j]);
          		j++;
          		} 
          		j=0;
          		printf("\n");
          		}
           }
           }
           }
           }
           }
           }
          
          ;
print2: ID { strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
           if(strcmp(tip[i],"int")==0)
           {printf("%d\n",valoare1[i]); break;}
           else
           if(strcmp(tip[i],"float")==0)
            {printf("%lf\n",valoare2[i]); break;}
           else
           if(strcmp(tip[i],"string")==0)
            {
            if(okZ==1){
            strcpy(valoare5[i],valoare5[i]+1);
            strcpy(valoare5[i]+(strlen(valoare5[i])-1),valoare5[i]+(strlen(valoare5[i])-1)+1);
            printf("%s\n",valoare5[i]); break;
            }
            else
            if(okZ==0)
            printf("\n");
            
            }
            else
           if(strcmp(tip[i],"char")==0)
            {
            
            strcpy(valoare4[i],valoare4[i]+1);
            strcpy(valoare4[i]+(strlen(valoare4[i])-1),valoare4[i]+(strlen(valoare4[i])-1)+1);
            printf("%s\n",valoare4[i]);
            break;
            }
            else
           if(strcmp(tip[i],"bool")==0)
           { printf("%d\n",valoare3[i]); break;}
           else
           if(strcmp(tip[i],"const int")==0)
           {
           
           printf("%d\n",valoare6[i]);break;
           }
           }
           }
           
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          }
          |ID2{ strcpy(v2,strdup($1));
           if(validarePRINT==1){
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         
            if(strcmp(nume[i],strdup($1))==0) 
           {  
                    
          
           if(strcmp(tip[i],"const int")==0)
           {
           printf("%d\n",valoare6[i]);break;
           }
           else
            if(strcmp(tip[i],"const float")==0)
           {
          
           printf("%lf\n",valoare7[i]);break;
           }
           else
           if(strcmp(tip[i],"const string")==0)
            {
            if(okZZ==1){
             strcpy(valoare8[i]-1,valoare8[i]);
            strcpy(valoare8[i]+(strlen(valoare8[i])-1),valoare8[i]+(strlen(valoare8[i])-1)+1);
            printf("%s\n",valoare8[i]); break;
            }
            else
            printf("\n");
            
            }
            else
           if(strcmp(tip[i],"const char")==0)
            {
            
            strcpy(valoare9[i],valoare9[i]+1);
            strcpy(valoare9[i]+(strlen(valoare9[i])-1),valoare9[i]+(strlen(valoare9[i])-1)+1);
            printf("%s\n",valoare9[i]);
            break;
            }
            else
           if(strcmp(tip[i],"const bool")==0)
           { printf("%d\n",valoare10[i]); break;}
           }
           }
           
           }
           else
           {yyerror("variabila nu e declarata");
           validarePRINT=0;
           return 0;
           }
          }
          }
          |ID3 { strcpy(v2,strdup($1));
           int j=0;
           if(verificare(strdup($1))==1){
            for(int i=0;i<count;i++){
         if(strcmp(nume[i],strdup($1))==0) 
           {  
               
           if(strcmp(tip[i],"int")==0)
           {
           		
           		if(nume[i][0]=='#') 
           		{
           		while(valoare01[i][j]!=-9999)
           		{
          		printf("%d ",valoare01[i][j]);
          		j++;
          		} 
          		j=0;
          		printf("\n");
          		}
           }
           if(strcmp(tip[i],"float")==0)
           {
           		if(nume[i][0]=='#') 
           		{
           		while(valoare02[i][j]!=-9999.000000)
           		{
          		printf("%lf ",valoare02[i][j]);
          		j++;
          		} 
          		j=0;
          		printf("\n");
          		}
           }
           }
           }
           }
           }
          
          ;
%%
int yyerror(char * s){
validarePRINT=0;
printf("eroare: %s la linia:%d\n",s,yylineno);
}

int diferit(char variabila[10])
{
   int j;
   
   for(j=0;j<count;j++)
   {
   	if(strcmp(nume[j],variabila)==0)
   		{
   		  yyerror("variabila deja folosita");
   		  validarePRINT=0;
   		  return 0;
   		}
   }
   
   return 1;
   
   
}
int verificare(char tip1[10])
{
   int j;
   for(j=0;j<count;j++)
   {
   
   	if(strcmp(nume[j],tip1)==0)
   		{ 	
   		  return 1;	  
   		 
   		}
   }
   for(j=0;j<countf;j++)
   {
   	int xc=strlen(numep[j]);
   	//printf("%d",xc);
   	for(int i=0;i<xc;i++)
   	{
   	printf("%c\n",numep[j][i]);
	   if(numep[j][i]==tip1[0])
	   		{ 
	   			
	   		  return 1;	  
	   		 
	   		}
	  }
   }
   
   
    yyerror("variabila nu este declarata");
    validarePRINT=0;
    return 0;
   
}
int fverificare(char nume1[10], char tip1[10])
{

   int i,oke=1,nrp=0,j;
   for(i=0;i<countf;i++)
   {
   	
   	if(strcmp(numef[i],nume1)==0)
   	{nrp=0; 
   		for(j=0;j<lr;j++)
   		{
   		if(ptipe[i][j]==tip1[j]) {nrp++;}
   		
   		}
   		
   	}
   	
   }
   
   
   		if(nrp==2)
   		{oke=0; }
    return oke;  
}
int verificare_v(char denumire[10],int poz)
{

	int j,i,ok=0;
	for(j=0;j<count && ok==0;j++)
	{
		if(strcmp(denumire,nume[j])==0)
		{
			i=0;
			if(strcmp(tip[j],"int")==0)
			while(valoare01[j][i]!=-9999)
			{
				
			//printf("val=%d ",valoare01[j][i]);
				i++;	
			}
			else if(strcmp(tip[j],"float")==0)
			while(valoare02[j][i]!=-9999.000000)
			{
				
			//printf("val=%d ",valoare01[j][i]);
				i++;	
			}
			
			ok=1;
		}
		
	}
	
	if(poz>=i) return 0;
	 else return 1;
}
void afisare_sir(char *sir,int ok)
{
int i=0,l=0;

char sir1[100];
for(i=1;i<strlen(sir)-1;i++)
{
	sir1[l]=sir[i];
	l++;
}
sir1[l]='\0';
if(ok==0)
printf("%s:",sir1);
else
printf("%s\n",sir1);
}
void afisare_sirr(char *sir,int ok)
{
int i=0,l=0;

char sir1[100];
for(i=1;i<strlen(sir)-1;i++)
{
	sir1[l]=sir[i];
	l++;
}
//strcpy(sir1,"\n");
strcpy(c,sir1);
}
void atribuire(char s1[100],char s2[100])
{       

	strcpy(nume[count],s2);
	strcpy(tip[count],s1);
	count++;
	
	
		
}
void fatribuire2(char s1[100],char s2[100])
{       
        printf("sus=%s\n",s2);
	strcpy(numef[countf],s2);
	printf("sus1=%s\n",s2);
	strcpy(ftipe[countf],s1);
	countf++;
	jjj=0;
}
void patribuire(char s1[100],char s2[100])
{       
	
	numep[countf][jjj]=s2[0];
	ptipe[countf][jjj]=s1[0];
	jjj++;
	
	
		
}
void atribuire0(char var[100],char vecto[100],int poz)
{
	int i,v;
	float v1;
	for(i=0;i<count;i++)
	{
		if(strcmp(vecto,nume[i])==0)
		{
			if(strcmp(tip[i],"int")==0)
			v=valoare01[i][poz];
			else if(strcmp(tip[i],"float")==0)
			v1=valoare02[i][poz];
			
		}
	}
	for(i=0;i<count;i++)
	{
		if(strcmp(var,nume[i])==0)
		{
			if(strcmp(tip[i],"int")==0)
			valoare1[i]=v;
			else if(strcmp(tip[i],"float")==0)
			valoare2[i]=v1;
			
		}
	}
}
void atribuire1(char nume1[100],int values)
{
	int i;
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
			valoare1[i]=values;
                      
					
		}
		
	
	
	}
}

void atribuire1inc(char nume1[100])
{
	int i;
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{       
			valoare1[i]=valoare1[i]+1;
                      
					
		}
		
	
	
	}
}
void atribuire1dec(char nume1[100])
{
	int i;
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{      valoare1[i]=valoare1[i]-1;
                      
					
		}
		
	
	
	}
}

void atribuire2inc(char nume1[100])
{
	int i;
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{       
			valoare2[i]=valoare2[i]+1.0;
                      
					
		}
		
	
	
	}
}
void atribuire2dec(char nume1[100])
{
	int i;
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{      valoare2[i]=valoare2[i]-1.0;
                      
					
		}
		
	
	
	}
}
void atribuire01(char nume1[100],int q, int values)
{
	int i,j;
	
	vector[k]=values;
	for(i=0;i<count;i++)
	{   
		if(strcmp(nume[i],nume1)==0)	
		{
			for(j=0;j<q;j++)
			{
			valoare01[i][j]=vector[j];
			}
			
               }
			
	}
	k++;

	
valoare01[i][q]=-9999;
if(k>q) k=0;
}
void atribuire001(char nume1[100], int values)
{
	int i,j;
	
	for(i=0;i<count;i++)
	{   
		if(strcmp(nume[i],nume1)==0)	
		{
			
			valoare01[i][contor]=values;
			
               }
			
	}
	contor++;

	


}
void atribuire2(char nume1[100],float values)
{
	int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
		   
			valoare2[i]=values;

					
		}
		
	
	
	}
}
void atribuire02(char nume1[100],int q, float values)
{
	int i,j;
	fvector[k]=values;
	for(i=0;i<count;i++)
	{   
		if(strcmp(nume[i],nume1)==0)	
		{
			for(j=0;j<q;j++)
			{valoare02[i][j]=fvector[j];}
			
               }
			
	}
	k++;

	
valoare02[i][q]=-9999.000000;
if(k>q) k=0;
}
void atribuire002(char nume1[100], float values)
{
	int i,j;
	for(i=0;i<count;i++)
	{   
		if(strcmp(nume[i],nume1)==0)	
		{
			
			valoare02[i][fcontor]=values;
			//printf("val02=%lf ", valoare02[i][fcontor]);
               }
			
	}
	fcontor++;
	

	


}

void atribuire3(char nume1[100],int values)
{   
	int i;
       

	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{      
			valoare3[i]=values;

					
		}
		
	
	
	}
}

void atribuire4(char nume1[100],char* values)
{
	int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{       
			strcpy(valoare4[i],values);
			
					
		}
		
	
	
	}
}

void atribuire5(char nume1[100],char* values)
{
	int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
			strcpy(valoare5[i],values);

					
		}
		
	
	
	}
}
void atribuire6(char nume1[100],int values)
{
	int i;
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
			valoare6[i]=values;
                      
					
		}
		
	
	
	}
}

void atribuire7(char nume1[100],float values)
{
	int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
		   
			valoare7[i]=values;
			

					
		}
		
	
	
	}
}

void atribuire8(char nume1[100],char* values)
{
	int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
			strcpy(valoare8[i],values);

					
		}
		
	
	
	}
}
void atribuire9(char nume1[100],char* values)
{
	int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
			strcpy(valoare9[i],values);

					
		}
		
	
	
	}
}
void atribuire10(char nume1[100],int values)
{
	int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],nume1)==0)	
		{
			valoare10[i]=values;

					
		}
		
	
	
	}
}
void atribuire_bydefault1(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			valoare1[i]=0;

					
		}
		
	
	
	}

}
void atribuire_bydefault01(char*s, int q1)
{

int i,j;
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			//printf("%s\n",nume[i]);
			for(j=0;j<q1;j++)
			{
				valoare01[i][j]=0;
				//printf("%d ",valoare01[i][j]);
		
			}	
			valoare01[i][q1]=-9999;	
		}
		
		
	}
	j=0;

}
void atribuire_bydefault2(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			valoare2[i]=0.0;

					
		}
		
	
	
	}

}
void atribuire_bydefault02(char*s,int q)
{

int i,j;
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			//printf("%s\n",nume[i]);
			for(j=0;j<q;j++)
			{
				valoare02[i][j]=0.0;
				//printf("%lf ",valoare02[i][j]);
		
			}	
			valoare02[i][q]=-9999.000000;	
		}
		
		
	}

}
void atribuire_bydefault3(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			strcpy(valoare5[i],"/null/");

					
		}
		
	
	
	}

}
void atribuire_bydefault4(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			strcpy(valoare4[i],"/null/");

					
		}
		
	
	
	}

}
void atribuire_bydefault5(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			valoare3[i]=0;

					
		}
		
	
	
	}

}

void atribuire_bydefault6(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			valoare6[i]=0;
                      
					
		}
		
	
	
	}

}
void atribuire_bydefault7(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			valoare7[i]=0.0;
                      
					
		}
		
	
	
	}

}
void atribuire_bydefault8(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			strcpy(valoare8[i],"/null/");
                      
					
		}
		
	
	
	}

}
void atribuire_bydefault9(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			strcpy(valoare9[i],"/null/");
                      
					
		}
		
	
	
	}

}
void atribuire_bydefault10(char*s)
{

int i;
	
	
	for(i=0;i<count;i++)
	{    
		if(strcmp(nume[i],s)==0)	
		{
			valoare10[i]=0;
                      
					
		}
		
	
	
	}

}
void afisare()
{
	printf("\n--------AFISARE count=%d\n",count);
	int i,j=0;
	for(i=0;i<count;i++)
	{
		if(nume[i][0]=='#') 
		{
		printf("nume=%s\n",nume[i]);
		printf("tip=%s\n",tip[i]);
		if(strcmp(tip[i],"int")==0)
		{
			while(valoare01[i][j]!=-9999)
			{
			printf("%d ",valoare01[i][j]);
			j++;}
			printf("\nj=%d\n",j);
		}
		
		j=0;
			if(strcmp(tip[i],"float")==0)
		{
			while(valoare02[i][j]!=-9999.000000)
			{
			printf("%lf ",valoare02[i][j]);
			j++;}
			printf("\nj=%d\n",j);
		}
		
		j=0;
		}
		
		
	}
}
void atrPI()
{
	PI=3.14;
	okk=1; 
}
void restabilire()
{
	contor=0;
	fcontor=0;
}
void calculeaza (int *x,int X,char n[100])
{
if(strcmp(n,"AND")==0){
*x=*x&&X;

}
else
if(strcmp(n,"OR")==0){

*x=*x||X;

}
else
if(strcmp(n,"NOT")==0){
*x=!(*x);

}
}
void flculeaza (int *x,float X,char n[100])
{
if(strcmp(n,"AND")==0){
*x=*x&&X;

}
else
if(strcmp(n,"OR")==0){

*x=*x||X;

}
else
if(strcmp(n,"NOT")==0){
*x=!(*x);

}
}
void cautare(char sir1[10]){
	int i;
	for(i=0;i<count;i++)
	{
		if(strcmp(sir1,nume[i])==0)
		{
			val_f=valoare1[i];
		}
	}
}
int vrf(char nume1[100])
{
	int i,x;
	for(i=0;i<countf;i++)
	{
		
		if(strcmp(numef[i],nume1)==0)
			{x=i; return x;}
	}
}
void rearanjeaza(char op[100])
{
	int i=0;
	char v1,v2,v3,o1,o2;
	int x8=strlen(op);
		aranjat[i]=op[0];i++;
		aranjat[i]=op[2];i++;
		aranjat[i]=op[4];i++;
		aranjat[i]=op[1];i++;
		aranjat[i]=op[3];i++;
	int j=5;
	for(i=5;i<x8;i++)
	{
		if(op[i]=='+' || op[i]=='-' || op[i]=='*' || op[i]==':')
			{aranjat[j+1]=op[i];aranjat[j]=op[i+1];j=j+2;i++;}
		
	}
	
	
}
int ver(char s1[100],char s2[100])
{
//printf("am intrat\n");
int i,ok=1,ol=1,j;
	for(i=0;i<countf;i++)
	{
		if(strcmp(numef[i],s1)==0 && strcmp(ftipe[i],s2)==0)
		{
			ol=1;
			//printf("ol=%d\n",ol);
			for(j=0;j<kt;j++)
			{
				//printf("tp=%c\n",tp[j]);
				//printf("ptipe=%c\n",ptipe[i][j]);
				if(tp[j]!=ptipe[i][j]) {ol=0;break;}
				//printf("ol=%d\n",ol);
			}
		}
		
		
		
	}
	ok=ol;
	return ok;
}
bool isOperand(char c) { return (c >= '0' && c <= '9'); }
int value(char c) {  return (c - '0'); }
int evalueaza_exp(char *exp)
{
    if (*exp == '\0')  printf("oooperatii invalide");
    int res = value(exp[0]);
 
  
    for (int i = 1; exp[i]; i += 2)
    {
        
        char opr = exp[i], opd = exp[i+1];
 
        
        if (!isOperand(opd)) printf("operatii invalide");
 
      
        if (opr == '+')       res += value(opd);
        else if (opr == '-')  res -= value(opd);
        else if (opr == '*')  res *= value(opd);
        else if (opr == ':')  res /= value(opd);
        else if (opr == '%')  res = res % value(opd);
 
        else  yyerror("operatii invalide");
    }
    //bzero(operatii,100);
   // nr=0;
    return res;
}

void printInorder(struct node* node)
{
    if (node == NULL)
        return;
    else{
    /* first recur on left child */
    printInorder(node->left);
    sir_op[nrc]=node->data;
    nrc++;
    printInorder(node->right);
    }
}

void push(struct node* x)
{
    if(head==NULL)
    head = x;
    else
    {
        (x)->next = head;
        head  = x;
    }
    
}
void buildAST(struct node *head,struct node *left, struct node *right,struct node* data)
{
	char s1[100];
    char s[100];
    bzero(s,100);
    strcpy(s,s1);
    int l = strlen(s) / sizeof(s[0]) ;
    struct node *x, *y, *z;
    for (int i = 0; i < l; i++) {
        // if read character is operator then poping two
        // other elements from stack and making a binary
        // tree
        if (s[i] == '+' || s[i] == '-' || s[i] == '*'
            || s[i] == ':' || s[i] == '^') {
            z = newNode(s[i]);
            x = pop();
            y = pop();
            z->left = y;
            z->right = x;
            push(z);
        }
        else {
            z = newNode(s[i]);
            push(z);
        }
    }
    nrc=0;
    printInorder(z);
    //printf("aranjat=%s\n",sir_op);
    //calcul_expresie(aranjat);
}


int evalAST(char operatie[100])
{
    int ccount = 0;
    //printf("op=%s\n",operatie);
    //printf("ccount=%d\n",strlen(operatie));
    for(int i=0;i<strlen(operatie);i++)
    {
    	//printf("op din for=%c\n",operatie[i]);
    	expression[ccount++]=operatie[i];
    	//printf("expresion din for =%c\n",expression[ccount-1]);
    }
    expression[ccount] = '\0';
    //printf("expresion afara for =%s\n",expression);
    //puts(expression);

    for(ccount = 0;expression[ccount]!='\0';ccount++)
    {
        switch(expression[ccount])
        {
            case '+':
            case '-':
            case '*':
            case '/':
            case '^':
            case '%':
            case '$':
                operatorFunc(expression[ccount]);
                break;
            default:
                operandFunc(expression[ccount]);
        }
    }
    if(stackPtr != 0)
    {
        yyerror("Incomplete / Incorrect postfix expression given!\n");
    }
    else
    {
        int x=solve(stack[stackPtr])-'0';
        return x;      
    }
}

void prefix(Btree root)
{
    Btree temp = root;
    if(temp)
    {
        //printf("%c ",temp->item);
        prefix(temp->left);
        prefix(temp->right);        
    }
}

void infix(Btree root)
{
    Btree temp = root;
    if(temp != NULL)
    {
        infix(temp->left);
        //printf("%c ",temp->item);       
        infix(temp->right);     
    }
}

void postfix(Btree root)
{
    Btree temp = root;
    if(temp)
    {
        postfix(temp->left);
        postfix(temp->right);       
        //printf("%c ",temp->item);       
    }
}

void push1(Btree root)
{
    stack[++stackPtr] = root;
}

Btree pop1()
{
    return (stack[stackPtr--]);
}

void operandFunc(char var)
{
    Btree root = (Btree)malloc(sizeof(struct node1));
    root->item= var;
    root->left= NULL;
    root->right= NULL;
    push1(root);
}

void operatorFunc(char var)
{
    Btree root = (Btree)malloc(sizeof(struct node1));
    root->item = var;
    root->right = pop1();
    root->left = pop1();
    push1(root);
}

int solve(Btree root)
{
    Btree temp = root;
    char num1,num2;
    char operator;
    int result;
    if(temp)
    {
        Btree LEFTP = temp->left;
        Btree RIGHTP = temp->right; 

        if(LEFTP)
        {
            if(isOperand1(LEFTP->item))
            {
                num1 = LEFTP->item;
            }   
            else
            {
                num1 = solve(LEFTP);
            }
        }

        if(RIGHTP)
        {
            if(isOperand1(RIGHTP->item))
            {
                num2 = RIGHTP->item;
            }   
            else
            {
                num2 = solve(RIGHTP);
            }
        }

        operator = temp->item;
       // printf("Test 1 = %c, num1 = %c, num2 = %c\n",operator,num1,num2);
        result = calculate(operator,num1-'0',num2-'0');
       // printf("Test Result = %d\n",result);
        temp->item = (result+'0');
      //  printf("Root Item = %d and %d\n",temp->item,temp->item);
        return root->item;
    }

    return NULL;
}

int calculate(char operator,int op1,int op2)
{
    //printf("Operator = %c , num1 = %d, num2 = %d\n",operator,op1,op2);
    switch(operator)
    {
        case '+':   return(op1+op2);
                    break;
        case '-':   return(op1-op2);
                    break;
        case '*':   return(op1*op2);
                    break;
        case '/':   return(op1/op2);
                    break;
        case '%':   return(op1%op2);
                    break;
        case '$':   return pow(op1,op2);
                    break;
        default:    printf("\n illegal operation.");
                    exit;
    }
}

int isOperand1(char var)
{
    switch(var)
    {
        case '+': 
        case '-':
        case '*':
        case '/':
        case '$':
        case '%':
                    return 0;
        default:
                    return 1;
    }
}
int main(int argc, char** argv){
yyin=fopen(argv[1],"r");
yyparse();
FILE *fisier,*fisier1;

fisier1=fopen("symbol_table_functii.txt","w+");
fisier=fopen("symbol_table.txt","w+");
if(fisier==NULL)
{
	yyerror("fisierul nu se poate deschide\n");
}
if(fisier1==NULL)
{
	yyerror("fisierul nu se poate deschide\n");
}
for(i=0;i<count;i++)
{
	if(strcmp(tip[i],"int")==0)
	{
		if(strncmp(nume[i],"#",1)==0)
		{
			fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=",nume[i],tip[i]);
			int j=0;
			while(valoare01[i][j]!=-9999)
			{
			if(valoare01[i][j+1]!=-9999)
			fprintf(fisier,"%d,",valoare01[i][j]);
			else if (valoare01[i][j+1]==-9999)
			fprintf(fisier,"%d\n",valoare01[i][j]);
			j++;
			
			}
		}
		else
			fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%d\n",nume[i],tip[i],valoare1[i]);
	}
	if(strcmp(tip[i],"float")==0)
	{
		if(strncmp(nume[i],"#",1)==0)
		{
			fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=",nume[i],tip[i]);
			int j=0;
			while(valoare02[i][j]!=-9999.000000)
			{
			if(valoare02[i][j+1]!=-9999.000000)
			fprintf(fisier,"%lf,",valoare02[i][j]);
			else if (valoare02[i][j+1]==-9999.000000)
			fprintf(fisier,"%lf\n",valoare02[i][j]);
			
			j++;
			
			}
		}
		else
			fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%lf\n",nume[i],tip[i],valoare2[i]);
	}
	if(strcmp(tip[i],"bool")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%d\n",nume[i],tip[i],valoare3[i]);
	if(strcmp(tip[i],"char")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%s\n",nume[i],tip[i],valoare4[i]);
	if(strcmp(tip[i],"string")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%s\n",nume[i],tip[i],valoare5[i]);
	if(strcmp(tip[i],"const int")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%d\n",nume[i],tip[i],valoare6[i]);
	if(strcmp(tip[i],"const float")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%lf\n",nume[i],tip[i],valoare7[i]);
	if(strcmp(tip[i],"const string")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%s\n",nume[i],tip[i],valoare8[i]);
	if(strcmp(tip[i],"const char")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%s\n",nume[i],tip[i],valoare9[i]);
	if(strcmp(tip[i],"const bool")==0)
	fprintf(fisier,"Nume=%s, tip=%s, scop=global, valoare=%d\n",nume[i],tip[i],valoare10[i]);
}
for(i=0;i<countf;i++)
{
	if(strcmp(ftipe[i],"int")==0)
	{
		fprintf(fisier1,"Nume=%s, tip=%s, parametrii sunt ",numef[i],ftipe[i]);
		for(int j=0;j<2;j++)
		{
			if(ptipe[i][j]=='i')
			fprintf(fisier1,"%c de tipul int | ",numep[i][j]);
			else if(ptipe[i][j]=='f')
			fprintf(fisier1,"%c de tipul float | ",numep[i][j]);
			else if(ptipe[i][j]=='c')
			fprintf(fisier1,"%c de tipul char | ",numep[i][j]);
			else if(ptipe[i][j]=='s')
			fprintf(fisier1,"%c de tipul string | ",numep[i][j]);
		}
		fprintf(fisier1,"\n");
	}
	if(strcmp(ftipe[i],"void")==0)
	{
		fprintf(fisier1,"Nume=%s, tip=%s, parametrii sunt ",numef[i],ftipe[i]);
		for(int j=0;j<2;j++)
		{
			if(ptipe[i][j]=='i')
			fprintf(fisier1,"%c de tipul int | ",numep[i][j]);
			else if(ptipe[i][j]=='f')
			fprintf(fisier1,"%c de tipul float | ",numep[i][j]);
			else if(ptipe[i][j]=='c')
			fprintf(fisier1,"%c de tipul char | ",numep[i][j]);
			else if(ptipe[i][j]=='s')
			fprintf(fisier1,"%c de tipul string | ",numep[i][j]);
		}
		fprintf(fisier1,"\n");
	}
		
	
}
fclose(fisier);
//rearanjeaza(operatii);
//buildAST(aranjat);
//printf("%d\n",ok_f);

/*for(i=0;i<countf;i++)
{
	printf("numef=%s\n",numef[i]);
	//printf("ftip=%s\n",ftipe[i]);
}*/


//afisare();

} 
