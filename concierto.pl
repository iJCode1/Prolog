es(siddharta, solista).
es(leBaron, solista).
es(devandraBenhart, solista).
es(cro, solista).
es(animalCollective, banda).
es(mum, banda).
es(mew, banda).
canta_en(animalCollective, ingles).
canta_en(mum, ingles).
canta_en(mew, ingles).
canta_en(devandraBenhart, ingles).
canta_en(siddharta, espanol).
canta_en(leBaron, espanol).
canta_en(cro, aleman).
canta_en(devandraBenhart, aleman).
es_un(ceremonia, festival).

toca_en(X, festival):- es(X, banda), canta_en(X, ingles).

r1:- canta_en(X, ingles), write(X), write(' Canta en Ingles'), nl, fail.
r2:- canta_en(X, ingles), es(X, solista), write(X), write(' Canta en ingles y es solista'), nl, fail.
r3:- canta_en(X, frances), write(X), write(' Canate en frances'), nl, fail.
r4:- es(X, banda), (canta_en(X, ingles); canta_en(X, aleman)), write(X),write(' Canta en ingles o aleman'), nl, fail.
r5:- canta_en(X, espanol), not(es(X, banda)),write(X), write(' Canta en espanol y no es una banda'), nl, fail.
r6:- toca_en(X, festival), write(X), write(' Tocan en el festival'), nl, fail.
r7:- es(X, banda), write(X), write(' Es una banda'), nl, fail.
r8:- es(X, solista), write(X), write(' Es un solista'), nl, fail.
