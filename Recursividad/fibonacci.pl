% Serie Fibonacci:

% 0 1 1 2 3 5 8 13 21 34

% Caso Base

fibo(0,_,_).

fibo(I, NUM, NUMA):-
	write(NUMA), write(' '),
	I1 is I-1,
	VALOR is NUM+NUMA,
	fibo(I1, VALOR, NUM).

main:- write('Ingresa el numero de suseciones: '), read(I),
       fibo(I, 1, 0).

