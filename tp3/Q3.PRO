PREDICATES
	estAncetre(symbol,symbol)
CLAUSES
	estAncetre(leon,jean).
	estAnceter(leon,francois).
	estAncetre(leon,marceline).
	
	estAncetre(mariel,jean).
	estAncetre(mariel,francois).
	estAncetre(mariel,marceline).
	
	estAncetre(jean,bernard).
	estAncetre(jean,didier).
	estAncetre(jean,anette).
	
	estAncetre(bernard,anais).
	estAncetre(bernard,paul).

	estAncetre(francois,mfrancois).
	estAncetre(francois,thierry).

	estAncetre(mfrancois,noe).
	estAncetre(mfrancois,lena).

	estAncetre(thierry,marie).
	estAncetre(thierry,pauline).

	estAncetre(marceline,jfrancois).
	estAncetre(marceline,nathalie).

	estAncetre(nathalie,marcia).
	estAncetre(nathalie,remi).
	estAncetre(nathalie,felix).

	estAncetre(jfrancois,joachim).
	estAncetre(jfrancois,julian).
	
	estAncetre(X,X).
	estAncetre(X,Y):-estAncetre(Y,TEMP),estAncetre(TEMP,X).
GOAL
	Write("Saisir l'ancentre :"),
	READLN(X),
	Write("Saisir l'autre :"),
	READLN(Y),
	Write("Resultat :"),
	estAncetre(X,Y).
