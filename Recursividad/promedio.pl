% Suma de Calificaciones
% CONTA1 --> CONTADOR DECREMENTADO PARA LLEGAR A CASO BASE.
% CALIF --> CALIFICACIÓN DEL ESTUDIANTE, SE ACUMULA
% SUMA --> GUARDA LA ACUMULACIÓN DE LAS CALIFICACIONES

promedio(0,0).

promedio(CONTA, SUMA):-
	CONTA1 is CONTA-1,
	write('Dame tu calificacion: '), read(CALIF),
	promedio(CONTA1, SUMA1),
	SUMA is SUMA1+CALIF.
	

main:- write('Cuantas calificaciones ingresaras?: '), read(CONTA), promedio(CONTA, SUMA),
	write('El promedio es: '),DIV is SUMA/CONTA,write(DIV).

