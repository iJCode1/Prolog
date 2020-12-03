%Programa que calcula rl factorial de un numero dado

factorial(0,1).

factorial(N,F):-
	N1 is N-1,
	factorial(N1, F1),
	F is N*F1.


main:- write('Introduce el numero a calcular el factorial => '),
       read(N), ((N>0, factorial(N,F), write(F));
       (N==0, write(' El factorial de 0 es 1'));
       (n1, write('Introduce un numero mayor a cero, gracias'))).