% 0 1 1 2 3 5 8 13 21

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,Y):-N>1,
N1 is N-1,
fibonacci(N1,Y1),
N2 is N-2,
fibonacci(N2,Y2),
Y is Y1+Y2.

main:- write("Termino a mostrar: "), read(N),(N>6,
fibonacci(N-1,Y), write("El termino es: "), write(Y);write('Ingresa un numero mayor a 6')).