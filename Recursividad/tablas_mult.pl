% T = Numero de la tabla
% I = Iterador
% M = Mult
% T * 1 = 7, T * 2 = 14.... T * 10 = 70
%Caso Base
mult(10,_).

mult(I,T):-
	I1 is I+1,
	mult(I1,T), %#13
	VALOR is (T*I1),
	write(T), write(' x '),write(I1),write(' = '), write(VALOR),nl.

main:- write('Ingrese el numero de la tabla deseada: '),
	read(T), (T>6, mult(0,T); (write('El valor debe ser mayor a 6'))).
