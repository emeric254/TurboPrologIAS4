Domains
    TlisteVille = symbol *

PREDICATES
    train(symbol,integer)
    avion(symbol,integer)

    listeAvion(TlisteVille)
    listeTrain(TlisteVille)

    affichage(TlisteVille)
    longueur(TlisteVille,integer)
CLAUSES
    train(bruxelle,1000).
    train(barcelone,500).
    train(milan,1000).
    train(paris,800).

    avion(rome,1500).
    avion(londres,1000).
    avion(tunis,2000).

    affichage([]).
    affichage([T|Q]):- write(T, " "), affichage(Q).
    listeAvion(TlisteVille):- FINDALL(V,avion(V,_),TlisteVille).
    listeTrain(TlisteVille):- FINDALL(V,train(V,_),TlisteVille).

    longueur([], 0).
    longueur([_|Q], Long):- longueur(Q, LQ), Long = LQ + 1.
Goal
    listeAvion(L),longueur(L,X),write("Nombre Avion : ",X).
    listeTrain(L),longueur(L,X),write("Nombre Train : ",X).








