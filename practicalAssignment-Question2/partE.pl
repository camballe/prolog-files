% KAMBALE ENOCH NYAMBU - P15/1921/2022
% QUESTION 2e) Write a procedure to split a list into two parts. The length of the first is given. Eg ?-split_list(4,[a,b,c,1,2,3,d,e,f],X). X=[[a b c 1],[2 3 d e f]]

split_list(0, List, [[], List]).
split_list(N, [Head|Tail], [FirstPart, SecondPart]) :-
    N > 0,
    N1 is N - 1,
    split_list(N1, Tail, [RestFirstPart, SecondPart]),
    FirstPart = [Head|RestFirstPart].

% Try this query:
% ?- split_list(4, [a, b, c, 1, 2, 3, d, e, f], X).