loves(helen, david) .
loves(david, helen) .
get_married(Man, Woman) :- loves(Man, Woman), loves(Woman, Man)