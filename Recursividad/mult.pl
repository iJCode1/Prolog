% Tabla de multiplicar de un numero

mult(_,0).

mult(N, X):-
	X1 is X-1,
	N1 is N*X,
	write(N), write('x'), write(X), write('='), write(N1), nl, mult(N, X1).

main:- write('Ingresa el numero '), read(N), write('Ingresa hasta que numero multiplica '), read(X), mult(N, X).