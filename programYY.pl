reversel(L1,L2):- rev(L1,[], L2).

rev([],L,L).

rev([X|L],L2,L3):-rev(L,[X|L2],L3).
