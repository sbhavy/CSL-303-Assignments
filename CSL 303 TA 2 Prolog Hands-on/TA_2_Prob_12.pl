concat([],L,L).
concat([X|L1],L2,[X|L3]):-concat(L1,L2,L3).
  
palindrome([]).
palindrome([_]).
palindrome(P):-concat([H|T],[H],P),palindrome(T). 
