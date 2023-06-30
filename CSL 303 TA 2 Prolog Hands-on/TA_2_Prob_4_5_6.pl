% Question 4
sum(X,Y,Z):-Z is X+Y.

% Question 5
max(X,Y,Z):-Z is max(X,Y).

% Question 6
factorial(0,1).
factorial(N,X):-
	N>0,
	Num is N-1,
	factorial(Num,Y),
	X is N*Y.

























