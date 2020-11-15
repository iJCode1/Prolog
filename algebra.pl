sabe(roman,algebra).

sabe(X, geometria):- sabe(X,algebra).
sabe(X, trigonometria):- not(sabe(X, geometria)).
sabe(X,algebra):- estudia(X, ingenieria).

main:- not(sabe(X, algebra)) ; not(sabe(X, trigonometria)).