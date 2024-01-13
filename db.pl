% Facts about love relationships
loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).

% Facts about genders
male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

% Facts about happiness
happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

% Rule about happiness and running
runs(albert) :-
    happy(albert).

% Rule about happiness, being with Albert, and dancing
dances(alice) :-
    happy(alice),
    with_albert(alice).

% Rule to check if Alice dances
does_alice_dance :- dances(alice),
    write('When Alice is happy and with Albert she dances').

% Rule about swimming and happiness
swims(bill) :-
    happy(bill).

% swims(bill) :-
  %  near_water(bill).



% Parent-child facts
parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

% Rules to get grandchild and grandparent
get_grandchild :-
    parent(albert, X),
    parent(X, Y),
    write('Albert\'s grandchild is '),
    write(Y), nl.

get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    parent(Y, X),
   format('~w ~s grandparent ~n', [Y, "is the"]).

% Sibling fact
brother(bob, bill).

% Rule for finding grandparent relationship
grand_parent(X, Y) :-
    parent(Z, X),
    parent(Y, Z).

% Facts about blushing and being human
blushes(X) :- human(X).
human(derek).

% Facts about stabbing and hatred
stabs(tybalt, mercutio, sword).
hates(romeo, X) :- stabs(X, mercutio, sword).

% Rule for determining grade level
what_grade(5) :-
    write('Go to kindergarten').

what_grade(6) :-
    write('Go to 1st Grade').

what_grade(Other) :-
    Grade is Other - 5,
    format('Go to grade ~w', [Grade]).

