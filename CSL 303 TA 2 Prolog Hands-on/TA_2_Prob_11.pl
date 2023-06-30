concat([],L,L).
concat([X|L1],L2,[X|L3]):-concat(L1,L2,L3).

reverse([],[]).
reverse([X|L],R):-reverse(L,L1),concat(L1,[X],R).
