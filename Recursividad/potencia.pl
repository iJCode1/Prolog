%Potencia de un Numero dado

potencia(N, 0, 1).

potencia(N, P, R):-
	N1 is N,
	P1 is P-1,
	potencia(N1, P1, R1),
	R is R1*N.

main:- write('Ingresa el numero: '), read(N), write('Ingresa la potencia: '), read(P),
	potencia(N, P, R),write('El resultado es: '),write(R).