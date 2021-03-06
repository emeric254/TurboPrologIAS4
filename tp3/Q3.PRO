PREDICATES
    pasParent(symbol)
    pasFils(symbol)
    estAncetre(symbol,symbol)

CLAUSES
    pasParent(leon).
    pasParent(mariel).

    pasFils(anais).
    pasFils(paul).
    pasFils(noe).
    pasFils(lena).
    pasFils(marie).
    pasFils(pauline).
    pasFils(marcia).
    pasFils(remi).
    pasFils(felix).
    pasFils(joachim).
    pasFils(julian).

    estAncetre(leon,jean).
    estAncetre(leon,francois).
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

    estAncetre(X,_):-pasFils(Y),Write("Aucune parentee"),FAIL.
    estAncetre(_,Y):-pasParent(Y),Write("Aucune parentee"),FAIL.
    estAncetre(X,Y):-not(pasAncetre(Y)),estAncetre(TEMP,Y),estAncetre(X,TEMP).

GOAL
    Write("Saisir l'ancentre :"),
    READLN(X),
    Write("Saisir l'autre :"),
    READLN(Y),
    estAncetre(X,Y),Write(X," est bien un ancetre de ",Y).
