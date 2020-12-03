es(jean_grey, invencible).
es(wolwerine, mutante).
es(deadpool, mutante).
es(rogue, mutante).
es(bolivar_trask, humano).
es(robert_kelly, senador).
es(watson, anti-mutante).
es(robert_kelly, anti-mutante).
es(charles_xavier, mutante).
es_nivel(jean_grey, 4).
es_nivel(charles_xavier, 3).
es_nivel(coloso, 2).
es_nivel(titania, 2).
es_nivel(apocalipsis, 2).
es_nivel(wolwerine, 1).
es_nivel(deadpool, 1).
es_nivel(rogue, 1).
es_nivel(mystique, 0).
es_nivel(arcangel, 0).
es_nivel(ciclope, 0).
es_nivel(la_bestia, 0).
es_nivel(la_mole, 0).
es_nivel(X, 3).
es_amigo_de(watson, robert_kelly).
esta_favor(dra_moyra, mutantes).
nivel(4, telequinesis).
nivel(3, telepatia).
nivel(2, super_fuerza).
nivel(1, extrasensorial).
nivel(0, limitado).
tiene_poder(jean_grey, telequinesis).
tiene_poder(charles_xavier, telepatia).
son(centinelas, robots).
crea(bolivar_trask, robots).

elimina(X, Y):- es_nivel(X, 3).
elimina(X, Y):- es_nivel(X, 2).
elimina(X, Y):- es_nivel(X, 1).
elimina(X, Y):- es_nivel(X, 0).
elimina(X, Y):- es_nivel(X, 4).

elimina_nivel(X, 2):- es_nivel(X, 2).
elimina_nivel(X, 1):- es_nivel(X, 2).
elimina_nivel(X, 0):- es_nivel(X, 2).

elimina(X, humano):- es_nivel(X, 0).
elimina_nivel(X, 2):- es_nivel(X, 3), es(X, mutante).

r1:- nivel(X, Y), es_nivel(Z, X), write(Z), write(' Tiene el poder de '), write(Y), nl, fail.
r2:- elimina(X, la_mole):- es_nivel(X, 3); es_nivel(X, 2).
r3:- es_nivel(rogue, X), write(' Rogue es nivel '), write(X),nl, es_nivel(cyclope, Y),  write(' cyclope es nivel '), write(Y), nl,  es_nivel(charles_xavier, Z),  write(' charles Xavier es nivel '), write(Z).
r4:- elimina(X, robert_kelly), write(X), write(' Elimina a Robert Kelly').
r5:- es(X, Y), write(X), write(' es: '), write(Y), nl, fail.