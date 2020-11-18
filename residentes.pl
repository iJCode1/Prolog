es(meredith, residente).
es(jorge, residente).
es(carlos, residente).
es(cristina, residente).
es(isabel, residente).
es(vanesa, mujer).
es(vanesa, jefe).
es(vanesa, cirujano).
es(cristina, mujer).
gusta(cristina, cardiologia).
es(meredith, mujer).
gusta(meredith, neurocirugia).
es(jorge, hombre).
gusta(jorge, traumatologia).
es(carlos, hombre).
gusta(carlos, traumatologia).
es(isabel, mujer).
gusta(isabel, pediatria).
gusta(isabel, cardiologia).
es(juan, cirujano).
es(juan, hombre).
es(alicia, enfermera).
es(alicia, mujer).
es(camilo, enfermero).
es(luisa, mujer).
es(luisa, jefe).

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