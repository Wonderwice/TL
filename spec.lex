LETTRE [A-Z]
CHIFFRE [0-9]
NOM {LETTRE}+(-{LETTRE}+)*
HEURE ([01]?[0-9]|2[0-3])
MINUTE ([0-5][0-9])
DATE ([0-2]?[0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{2}
%%
DOSSIER						{return DOSSIER;}
[ \n\t]					
{NOM}[/]{NOM}					{return OWNER;}
{CHIFFRE}{2}[/]{CHIFFRE}{2}[/]{CHIFFRE}{2}	{return DATE;}
{LETTRE}{3}					{return AIRPORT;}
{LETTRE}{6}					{return DOSSIERID;}
[+]?{HEURE}:{MINUTE}				{return HOUR;}
{LETTRE}{2}{CHIFFRE}{2,4}			{return FLIGHT;}
<<EOF>>						{return 0;}
.						{printf("Erreur [%s] non reconnu",yytext); return 1;}
