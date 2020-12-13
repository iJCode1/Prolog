% 1+2+3+4+5+6+7+8+9

% 1! + 2! + 3! + 4! + 5! + 6! + 7! + ... + n!

factorial(0,1).

factorial(N, R):-
	N1 is N-1,
	factorial(N1, R1),
	R is R1*N.

suma(0,0).
suma(N,S):-
	factorial(N,R),
	N1 is N-1,
	suma(N1, S1),
	S is S1+R.

main:- write('Hasta que numero deseas realizar tu acumulacion: '), read(N),
	((N<12, suma(N,S), write('El resultado es '), write(S));(write('Ingrese un valor menor o igual a 12'))).
