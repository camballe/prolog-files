write_digits(12):-nl.
write_digits(X):-write(X), write(', '),
Y is X-1, write_digits(Y) .
