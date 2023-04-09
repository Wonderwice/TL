LETTRE [A-Z]
CHIFFRE [0-9]
NOM {LETTRE}+(-{LETTRE}+)*
%%
DOSSIER						{printf("%s ",yytext) ;}
\n						{printf("\n") ;}
{NOM}[/]{NOM}					{printf("%s ",yytext) ;}
{CHIFFRE}{2}[/]{CHIFFRE}{2}[/]{CHIFFRE}{2}	{printf("%s ",yytext) ;}
{LETTRE}{3}					{printf("%s ",yytext) ;}
{LETTRE}{6}					{printf("%s ",yytext) ;}
[+]?{CHIFFRE}{1,2}[:]{CHIFFRE}{2}			{printf("%s ",yytext) ;}
{LETTRE}{2}{CHIFFRE}{2,4}			{printf("%s ",yytext) ;}
.
