LETTRE [A-Z]
CHIFFRE [0-9]
NOM {LETTRE}+(-{LETTRE}+)*

%%
DOSSIER						{return DOSSIER;}
[ \n\t]					
{NOM}[/]{NOM}					{return OWNER;}
{CHIFFRE}{2}[/]{CHIFFRE}{2}[/]{CHIFFRE}{2}	{return DATE;}
{LETTRE}{3}					{return AIRPORT;}
{LETTRE}{6}					{return DOSSIERID;}
[+]?{CHIFFRE}{1,2}[:]{CHIFFRE}{2}		{return HOUR;}
{LETTRE}{2}{CHIFFRE}{2,4}			{return FLIGHT;}
<<EOF>>						{return 0;}
.						{printf("Erreur [%s] non reconnu",yytext); return 1;}
