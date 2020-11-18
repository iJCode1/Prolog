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
es(camilo, hombre).
es(camilo, enfermero).
es(camilo, misogino).
es(luisa, mujer).
es(luisa, jefe).
es(luisa, feminista).
es(X, jefe):- es(X,residente), gusta(X, pediatria).
es(X,nazi):- es(X, jefe).
come(X, enfermero):- es(X,cirujano).
trabaja(alicia, X):- es(X, residente).
trabaja(juan, X):- es(X, residente), gusta(X, traumatologia).
trabaja(vanesa, X):- es(X, residente), gusta(X, traumatologia), gusta(X, neurocirugia).
trabaja(luisa, X):- es(X, residente), gusta(X, neurocirugia).