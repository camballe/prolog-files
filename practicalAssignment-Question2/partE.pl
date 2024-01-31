split_list(0, List, [[], List]).
split_list(N, [Head|Tail], [FirstPart, SecondPart]) :-
    N > 0,
    N1 is N - 1,
    split_list(N1, Tail, [RestFirstPart, SecondPart]),
    FirstPart = [Head|RestFirstPart].
