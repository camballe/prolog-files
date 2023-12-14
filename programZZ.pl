appendz([],L,L).

appendz([X|L1],L2,[X|L3]):-appendz(L1,L2,L3).
