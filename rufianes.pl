es(juan, rufian).
es(pepe,rufian).
es(carlos, noble).
es(pepe, noble).
es(juan, plebeyo).
es(laura, dama).
es(julieta,dama).
es(julieta, hermosa).

desea(X, Y):-es(X, plebeyo), es(Y,dama).
desea(X,Y):- es(X,noble), es(Y, hermosa).
rapta(X,Y):- es(X,rufian), desea(X,Y).

r1:- es(X,rufian), es(X,noble), write(X).
r2:- rapta(carlos, Y), write(Y).
r3:- es(X,rufian), desea(X,julieta),write(X).
r4:- rapta(X,Y), write(X), write(Y).
r5:- desea(juan, Y), write(Y).
r6:- desea(carlos, Y), write(Y).
r7:- es(X, noble), write(X).
