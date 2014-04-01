Domains
    TlisteVille = symbol *

PREDICATES
    train(symbol,integer)
    avion(symbol,integer)

    listeAvion(TlisteVille)
    listeTrain(TlisteVille)

    affichage(TlisteVille)
    longueur(TlisteVille,integer)
    concatene(TlisteVille,TlisteVille,TlisteVille)
    appartient(symbol, TlisteVille)
    desservie(symbol)
CLAUSES
    train(bruxelle,1000).
    train(barcelone,500).
    train(milan,1000).
    train(paris,800).
    train(rome, 1700).

    avion(rome,1500).
    avion(londres,1000).
    avion(tunis,2000).
    avion(barcelone, 400).
    avion(paris, 700).

    affichage([]).
    affichage([T|Q]):- write(T, " "), affichage(Q).

    listeAvion(TlisteVille):- FINDALL(V,avion(V,_),TlisteVille).
    listeTrain(TlisteVille):- FINDALL(V,train(V,_),TlisteVille).

    longueur([], 0).
    longueur([_|Q], Long):- longueur(Q, LQ), Long = LQ + 1.

    concatene([], L, L).
    concatene([X|Q1], L2, [X|L3]) :- concatene(Q1, L2, L3).
    concatene([X|Q1], L2, LR) :- concatene(Q1, L2, L3), LR=[X|L3].

    appartient(X, [T|_]) :- X=T.
    appartient(X, [T|Q]) :- X<>T, appartient(X, Q).


    desservie(Ville) :- listeAvion(L),appartient(Ville,L),listeTrain(L2),not(appartient(Ville,L2)),  WRITE("Nbr de Transport : 1").
    desservie(Ville) :- listeTrain(L),appartient(Ville,L),listeAvion(L2),not(appartient(Ville,L2)),  WRITE("Nbr de Transport : 1").
    desservie(Ville) :- listeTrain(L),appartient(Ville,L),listeAvion(L2),appartient(Ville,L2),  WRITE("Nbr de Transport : 2").
    desservie(Ville) :- listeAvion(L),not(appartient(Ville,L)), WRITE("Nbr de Transport : 0").
    desservie(Ville) :- listeTrain(L),not(appartient(Ville,L)), WRITE("Nbr de Transport : 0").

Goal
    WRITE("Ville : "),
    READLN(X),
    desservie(X).
