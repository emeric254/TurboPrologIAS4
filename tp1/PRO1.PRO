
PREDICATES
    age(symbol,integer)
    agreable(symbol)
    aime(symbol,symbol)

    bienpaye(symbol)

    chien(symbol)
    chat(symbol)

    estomacvide(symbol)

    faim(symbol)

    habite(symbol,symbol)
    homme(symbol)

    localiser(symbol,symbol)

    metier(symbol)

    pays(symbol)
    personne(symbol)
    plusage(symbol,symbol)

    tel(symbol,string)
    travailler(symbol,symbol)

CLAUSES
    age(bruno,20).
    age(milou,7).
    agreable(informaticien).
    aime(bruno,pizza).
    aime(X,Y):-chien(X),chat(Y),FAIL.
    aime(pierre,velo).
    aime(paul,parapente).
    aime(paul,Y):-aime(pierre,Y).
    aime(bruno,Y):-chien(Y).
    aime(X,Y):-personne(X),travailler(X,Y),metier(Y),agreable(Y),bienpaye(Y).

    bienpaye(informaticien).

    chat(zoe).
    chien(milou).

    estomacvide(bruno).

    faim(X):-estomacvide(X),personne(X).

    homme(bruno).
    habite(bruno,dijon).

    localiser(dijon,france).

    metier(informaticien).

    pays(france).
    personne(bruno).
    personne(X):-homme(X).
    plusage(X,Y):-personne(X),personne(Y),age(X,U),age(Y,V),U>V.

    tel(pierre,"0506040708").
    travailler(bruno,informaticien).
