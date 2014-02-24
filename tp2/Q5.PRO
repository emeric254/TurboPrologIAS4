
PREDICATES

    avion (symbol, integer)
    ferry (symbol, integer)

    hotel (symbol, integer)
    chambre (symbol, integer)
    camping (symbol, integer)

    logement(symbol,string,integer)
    transport(symbol,string,integer)

    sejour(symbol,integer,symbol,symbol)


CLAUSES

    logement(DEST,NOM,PRIX):-NOM="hotel",hotel(DEST,PRIX).
    logement(DEST,NOM,PRIX):-NOM="chambre",chambre(DEST,PRIX).
    logement(DEST,NOM,PRIX):-NOM="camping",camping(DEST,PRIX).

    transport(DEST,NOM,PRIX):-NOM="avion",avion(DEST,PRIX).
    transport(DEST,NOM,PRIX):-NOM="ferry",ferry(DEST,PRIX).

    hotel(londres,2300).
    hotel(rome,2100).
    hotel(tunis,3000).

    chambre(londres,1450).
    chambre(rome,1050).
    chambre(tunis,900).

    camping(londres,840).
    camping(rome,700).
    camping(tunis,500).

    avion(londres,1500).
    avion(rome,1000).
    avion(tunis,2000).

    ferry(tunis,1200).
    ferry(londres,800).

    sejour(DEST,DUREE,LOGMNT,TRANSP):-logement(DEST,LOGMNT,X),transport(DEST,TRANSP,Y),TOTAL=Y+X*DUREE,WRITE("Prix total : ",TOTAL," ").
    sejour(DEST,_,LOGMNT,_):-NOT(logement(DEST,LOGMNT,_)),WRITE("Desole ... pas de sejour a ",DEST," en ",LOGMNT,".\n").
    sejour(DEST,_,_,_):-NOT(avion(DEST,_)),NOT(ferry(DEST,_)),WRITE("Pas de transport pour ",DEST,"\n").

GOAL
    WRITE("Bonjour, veuillez saisir la destination : "),READLN(DEST),
    WRITE(" / le logement : "),READLN(LOGMNT),
    WRITE(" / la duree : "),READINT(DUREE),
    sejour(DEST,DUREE,LOGMNT,TRANSP),WRITE(TRANSP,"\n"),FAIL.
