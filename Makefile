NOM=spec

# La liste des dependances 
$(NOM).exe : lex.yy.c $(NOM).tab.c 
	cc -o $(NOM).exe y.tab.c -lfl liby.a

lex.yy.c : $(NOM).lex 
	flex $(NOM).lex 

$(NOM).tab.c : $(NOM).yac 
	yacc $(NOM).yac 


# Les ordres speciaux
clean : 
	rm -rf y.tab.c lex.yy.c $(NOM).exe

# Le all pour savoir ce que je dois faire au final 

all : $(NOM)
