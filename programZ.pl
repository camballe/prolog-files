print_stars(0) :-
    nl. 
print_stars(N) :-
    N > 0,
    write('*'),
    N1 is N - 1,
    print_stars(N1).


print_block(_, 0).
print_block(Width, Height) :-
    Height > 0,
    print_stars(Width),
    Height1 is Height - 1,
    print_block(Width, Height1). 

start :-
    Width = 20, 
    Height = 5, 
    print_block(Width, Height).

