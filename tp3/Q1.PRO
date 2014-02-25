PREDICATES
	factorielle(integer,integer)
CLAUSES
	factorielle(0,1).
	factorielle(X,Y):-A=X-1,factorielle(A,B),Y=B*X.
GOAL
	Write("Calcul de factorielle\nSaississez un entier : "),
	READINT(CHIFFRE),factorielle(CHIFFRE,RESULTAT),
	Write("Resultat : ",RESULTAT,"\n").