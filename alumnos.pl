es(sofia, alumna).
es(gabriel, alumno).
es(pedro, alumno).
es(veronica,profesor).
es(miguel,profesor).
es(luis,profesor).
es(maria,profesor).
es(magdalena,profesor).
es(mario,profesor).
imparte(veronica,fisica).
imparte(miguel,etica).
imparte(luis,programacion).
imparte(luis,calculo).
imparte(maria,edd).
imparte(magdalena,io).
imparte(magdalena,prolog).
imparte(mario,algebra).
imparte(mario,fis).
toma(sofia,calculo).
toma(pedro,programacion).
toma(enrique,programacion).
toma(gabriel,fis).
toma(pedro,edd).
toma(gabriel,edd).
toma(enrique,fisica).

toma(X, fisica):- es(X, alumno), toma(X, calculo).
toma(X, calculo), toma(X, matematicas):- es(X, alumno), toma(X, fis).
toma(X, io):- es(X, alumno).
not (toma(X, programacion)), toma(X, algebra):- es(X, alumno), toma(X, etica).
toma(X, edd) ; toma(X, prolog):- es(X, alumno).

r1:- toma(X, matematicas).
r2:- es(X, alumno), toma(X, programacion), toma(X, algebra),write(X).
r3:- es(X,profesor), imparte(X,Y), toma(gabriel, Y), write(X).
r4:- es(W,alumno), es(X, alumno), es(Y, alumno), toma(W,Z), toma(X,Z), toma(Y,Z), write(Z).
