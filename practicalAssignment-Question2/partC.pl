remove_item(_, [], []). % Base case: removing an item from an empty list results in an empty list.
remove_item(Item, [Item|Rest], Result) :-
    remove_item(Item, Rest, Result). % Skip the item when found and continue removing in the rest of the list.
remove_item(Item, [X|Rest], [X|Result]) :-
    dif(X, Item), % Keep the current element if it's different from the item to be removed.
    remove_item(Item, Rest, Result). % Continue removing in the rest of the list.

% Try this query:
% ?- remove_item(a, [a, b, c, a, d, a], Result).