%Factorial de un numero dado.

factorial(0, 1).

factorial(N,R):-
    N1 is N-1,
    factorial(N1, R1),
    R is N*R1.


mainFacto:- 
    write('Ingresa el Numero del factorial deseado: '), read(N),
        factorial(N,R), write('El resultado es: '), write(R).
% -------------------------------------------------------------- ---------------------------------------------------------
%Potencia de un numero dado y exponente dado
potencia(_,0,1).

potencia(B,E,R):-
    E1 is E-1,
    potencia(B,E1,R1),
    R is B*R1.

mainPotencia:-
    write('Ingresa la Base: '), read(B),
    write('Ingresa el Exponente: '), read(E),
    potencia(B,E,R),
    write(B), write(^), write(E), write(' = '), write(R).
% -------------------------------------------------------------- ---------------------------------------------------------
%Promedio

promedio(0, 0).

promedio(NC, R):-
    NC1 is NC-1,
    write('Ingresa tu calificacion: '), read(C),
    promedio(NC1, R1),
    R is R1+C.

mainPromedio:-
    write('Cuantas calificaciones ingresaras?: '), read(NC),
    promedio(NC,R),  P is R/NC,
    write('El promedio es: '), write(P).
% -------------------------------------------------------------- ---------------------------------------------------------