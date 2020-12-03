es(richard_hendricks, programador).
es(dinesh_chugtai, programador).
es(gavin_belson, ceo).
es(erlich_bachman, empresario).
es(gilfoyle, ingeniero_de_red).
es(jared, director_financiero).
es(jared, asesor_negocios).
es(monica_hall, directora_finanzas).
vive_en(richard_hendricks, incubadora).
vive_en(dinesh_chugtai, incubadora).
vive_en(gilfoyle, incubadora).
vive_en(nelson_bighetti, incubadora).
fundo(richard_hendricks, pied_piper).
fundo(gavin_belson, hooli).
trabaja_en(nelson_bighetti, hooli).
trabaja_en(gavin_belson, hooli).

es(X, ceo):- es(X, programador), fundo(X, Y).
es(X, demandado):- es(X, programador).
tiene_una(X, startup):- es(X, ceo).
vive_en(X, sillicon_valley):- es(X, programador); es(X, ingeniero_de_red).

r1:- tiene_una(X, startup), write(X), write(' Tiene una Startup'), nl, fail.
r2:- es(X, ceo), write(X), write(' Es CEO'), nl, fail.
r3:- es(X, programador), write(X), write(' Es programador'), nl, fail.
r4:- fundo(X, hooli), write(X), write(' Fundo Hooli').
r5:- trabaja_en(X, hooli), write(X), write(' Trabaja en Hooli'), nl, fail.
r6:- write('Jared es: '),nl,es(jared, X), write(X), nl, fail.
r7:- vive_en(X, sillicon_valley), write(X), write(' Puede vivir en Sillicon Valley'), nl, fail.
r8:- es(X, demandado), write(X), write(' Sera demandado'), nl, fail.
