es(sofia,alumno).
es(gabriel,alumno).
es(pedro,alumno).
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
toma(X, fis):- toma(X, calculo), toma(X, matematicas).
toma(X, io):- es(X, alumno).
not(toma(X, programacion)), toma(X, algebra):- es(X, alumno), toma(X, etica).
toma(X, edd); toma(X, prolog):- es(X, alumno).
r1:- toma(X, matematicas), write(X).
r2:- toma(X, programacion), toma(X, algebra),write(X).
r3:- es(X,profesor), imparte(X,Y), toma(gabriel, Y), write(X).
r4:- toma(sofia,X), toma(gabriel,X), toma(pedro,X), write(X).
r5:- toma(X,Y), write(X), write(' Toma '), write(Y).
r6:- es(X, profesor), imparte(X,Y), toma(Z,Y), write(X), write(' Tiene como alumno en '), write(Y), write(' a '), write(Z).
