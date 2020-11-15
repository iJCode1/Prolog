estudio(aldo, noche).

resolver(X, problemas):- estudio(X, noche).
aprobar(X,fisica):- resolver(X,problemas).

main:-aprobar(aldo, fisica).