% Question 7
multi(N1,N2,Res):-Res is N1*N2.

% Question 8
edge(p,q).
edge(q,r).
edge(q,r).
edge(q,s).
edge(s,t).

route(X,Y):-edge(X,Y).
route(X,Y):-edge(X,Z),route(Z,Y).

% Question 9
member(X,[X|Tail]).
member(X,[Head|Tail]):-member(X,Tail).






























