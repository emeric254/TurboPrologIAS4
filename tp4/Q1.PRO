PREDICATES
	train(symbol,integer)
	avion(symbol,integer)
	afficherAvion()
CLAUSES
	train(bruxelle,1000).
	train(barcelone,500).
	train(milan,1000).
	train(paris,800).
	
	avion(rome,1500).
	avion(londres,1000).
	avion(tunis,2000).
	afficherAvion():-avion(X,_),Write(X," ").
GOAL
/*	Write("\navion : "),avion(X,_),Write(X," "),Fail.
*/
	Write("\navion : "),afficherAvion(),Fail.