PREDICATES
	pgcd(integer,integer,integer)
CLAUSES
	pgcd(X,Y,RESULT):-X<Y,pgcd(Y,X,RESULT).
	pgcd(_,1,1).
	pgcd(X,Y,RESULT):-X mod Y = 0,RESULT=Y.
	pgcd(X,Y,RESULT):-NEXT= X mod Y,pgcd(Y,NEXT,RESULT).
GOAL
	Write("\nCalcul de PGCD\n\nSaisir le premier :"),
	READINT(X),
	Write("\nSaisir le second :"),
	READINT(Y),
	pgcd(X,Y,RESULT),
	Write("\nResultat : ",RESULT).