% Write a procedure count(List,N) that counts the number of elements in a list.
count([], 0). % Base case: an empty list has zero elements.
count([_|Rest], N) :-
    count(Rest, NRest), % Recursively count the elements in the rest of the list.
    N is NRest + 1.     % Increment the count.

% Try this query:
% ?- count([a, b, c, d], N).