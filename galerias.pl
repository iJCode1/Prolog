va(elsa, galerias).
es(elsa, amiga).

compra(X, sombrero):-va(X, galerias).
compra(X, vestido):-compra(X, sombrero).

main:-compra(elsa, vestido).