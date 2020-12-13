sumaa(_, 0, 0).

sumaa(B, E,R):-
	potencia(B,E,RP),
	E1 is E-1,
	sumaa(B, E1, R1),
	R is R1+RP.

potencia(_,0,1).

potencia(B,E,R):-
	E1 is E-1,
	potencia(B, E1, R1),
	R is B*R1.

main:- write('Ingresa el valor de la base: '), read(B),((B>6,
	write('Ingresa el valor del exponente: '), read(E),
	sumaa(B,E,R), write('El valor es: '), write(R));(write('Ingresa una base mayor a 6'))).
