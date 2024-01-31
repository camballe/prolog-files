% KAMBALE ENOCH NYAMBU - P15/1921/2022
% QUESTION 2b) Write a rule element_count that counts the number of times a given element occurs in the list

element_count(_, [], 0). % Base case: an empty list has zero occurrences of any element.
element_count(Element, [Element|Rest], Count) :-
    element_count(Element, Rest, RestCount), % Recursively count occurrences in the rest of the list.
    Count is RestCount + 1.                  % Increment the count when the element is found.
element_count(Element, [_|Rest], Count) :-
    element_count(Element, Rest, Count).      % Continue searching for the element in the rest of the list.

% Try this query:
% ?- element_count(a, [a, b, c, a, d, a], Count).