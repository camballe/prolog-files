% KAMBALE ENOCH NYAMBU - P15/1921/2022
% QUESTION 2d) Write a procedure to return the maximum value from a list eg [1,-2,3] =&gt; 3


% Base case: Maximum of a single element list is the element itself.
max_in_list([X], X).

% Recursive case: Compare the head of the list with the maximum of the tail.
max_in_list([Head|Tail], Max) :-
    max_in_list(Tail, TailMax),
    Head >= TailMax,
    Max is Head.

max_in_list([Head|Tail], Max) :-
    max_in_list(Tail, TailMax),
    Head < TailMax,
    Max is TailMax.

% Try this query:
% ? - ?- max_in_list([1, -2, 3], Max).