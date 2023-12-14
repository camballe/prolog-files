loop(end) .
loop(_):-write('write end to exit::'),
read(Word), loop(Word) .

