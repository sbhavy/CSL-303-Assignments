% The law says that it is a crime for an American to sell weapons to hostile nations.
criminal(X):-american(X),weapon(Y),sells(X,Y,Z),hostile(Z).
weapon(X):-missile(X).
hostile(X):-enemy(X,america).

% The country Nono, an enemy of America, has some missiles,
enemy(nono,america).
owns(nono,m).
missile(m).

% and all of its missiles were sold to it by Colonel West, who is American.
sells(west,X,nono):-missile(X),owns(nono,X).
american(west).