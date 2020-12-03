% Tabla de multiplicar de un numero

mult(_,X).

mult(N, X):-
	X1 is X-1,
	N2 is 0
	I1 is N2+1
	N1 is N*1,
	write(N), write('x'), write(X), write('='), write(N1), nl, mult(N, X1).

main:- write('Ingresa el numero '), read(N), write('Ingresa hasta que numero multiplica '), read(X), mult(N, X).