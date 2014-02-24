
PREDICATES
	destination(symbol)
	transport(symbol)
	logement(symbol)
	prixSejour(symbol,symbol,integer)
	prixTrajet(symbol,symbol,integer)
	sejour(symbol,integer,symbol,symbol)

CLAUSES
	destination(londres).
	destination(rome).
	destination(tunis).

	logement(hotel).
	logement(chambre).
	logement(camping).

	transport(avion).
	transport(ferry).

	prixSejour(londres,hotel,2300).
	prixSejour(londres,chambre,1450).
	prixSejour(londres,camping,840).
	prixSejour(rome,hotel,2100).
	prixSejour(rome,chambre,1050).
	prixSejour(rome,camping,700).
	prixSejour(tunis,hotel,3000).
	prixSejour(tunis,chambre,900).
	prixSejour(tunis,camping,500).

	prixTrajet(londres,avion,1500).
	prixTrajet(londres,ferry,800).
	prixTrajet(rome,avion,1000).
	prixTrajet(tunis,avion,2000).
	prixTrajet(tunis,ferry,1200).

	sejour(DEST,DUREE,LOGMNT,TRANSP):-destination(DEST),logement(LOGMNT),transport(TRANSP),prixTrajet(DEST,TRANSP,X),prixSejour(DEST,LOGMNT,Y),TOTAL=X+Y*DUREE,write(TOTAL).