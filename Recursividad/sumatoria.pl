% Sumatoria
% 1+2+3+4+5+6+7+8+9+10+11+12+13+14+15

suma(0,0).

suma(N, ACUM):- 
	N1 is N-1,
	suma(N1, ACUM1),
	ACUM is ACUM1 + N1.

main:- write('Hasta que numero se va a hacer la suma: '), read(N),
	suma(N+1, ACUM), write('La acumulacion de 1 hasta '), write(N),
	write(' es '), write(ACUM).