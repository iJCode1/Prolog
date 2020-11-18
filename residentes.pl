es(meredith, residente).
es(jorge, residente).
es(carlos, residente).
es(cristina, residente).
es(isabel, residente).
es(vanesa, mujer).
es(cristina, mujer).
es(meredith, mujer).
es(isabel, mujer).
es(alicia, mujer).
es(luisa, mujer).
es(jorge, hombre).
es(carlos, hombre).
es(juan, hombre).
es(vanesa, jefe).
es(luisa, jefe).
es(vanesa, cirujano).
es(juan, cirujano).
es(alicia, enfermera).
es(camilo, enfermero).
gusta(cristina, cardiologia).
gusta(isabel, cardiologia).
gusta(jorge, traumatologia).
gusta(carlos, traumatologia).
gusta(isabel, pediatria).
gusta(meredith, neurocirugia).

podria_ser(X, jefe):-es(X,residente), gusta(X, pediatria).
es(X,nazi):-es(X, jefe).
come(X, enfermero):-es(X,cirujano).
trabaja_con(X, alicia):-es(X, residente).
trabaja_con(X, camilo):-es(X, hombre).
trabaja_con(juan, X):-es(X, residente), gusta(X, traumatologia).
trabaja_con(X, vanesa):-es(X, residente), gusta(X, traumatologia) ; gusta(X, neurocirugia).
trabaja_con(X, luisa):-es(X, mujer), es(X, residente), es(X, cirujano), gusta(X, neurocirugia).

r1:- es(X, residente), write(X), write(' es residente'),nl, fail.
r2:- es(X, nazi), write(X), write(' es nazi'),nl, fail.
r3:- podria_ser(X, jefe), write(X), write(' podria ser jefe'),nl, fail.
r4:- trabaja_con(X, luisa), write('Luisa trabaja con '),write(X),nl, fail.
r5:- trabaja_con(X, Y), write(Y), write(' Trabaja con '), write(X),nl, fail.