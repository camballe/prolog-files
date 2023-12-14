mother_of(mary, alexander).
mother_of(mary, carmen).
mother_of(mary, carmen).
person(X):-mother_of(Y, X).
person(A):-mother_of(B, A).

