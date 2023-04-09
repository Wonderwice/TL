LETTRE [A-Z]
CHIFFRE [0-9]
NOM {LETTRE}+(-{LETTRE}+)*

%%
DOSSIER						{printf("%s ",yytext); return DOSSIER;}
\n						{printf("\n");}
[ \t]						{printf(" ");}
{NOM}[/]{NOM}					{printf("%s ",yytext); return OWNER;}
{CHIFFRE}{2}[/]{CHIFFRE}{2}[/]{CHIFFRE}{2}	{printf("%s ",yytext); return DATE;}
{LETTRE}{3}					{printf("%s ",yytext); return AIRPORT;}
{LETTRE}{6}					{printf("%s ",yytext); return DOSSIERID;}
[+]?{CHIFFRE}{1,2}[:]{CHIFFRE}{2}		{printf("%s ",yytext); return HOUR;}
{LETTRE}{2}{CHIFFRE}{2,4}			{printf("%s ",yytext); return FLIGHT;}
<<EOF>>						{return END;}
.						{printf("Erreur [%s] non reconnu",yytext); return 1;}
