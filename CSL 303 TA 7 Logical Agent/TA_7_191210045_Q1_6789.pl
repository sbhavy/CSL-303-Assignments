% Part 6
goes(lamb,X):-goes(mary,X).
goes(mary,school).

% Part 7
not_dependable(X):-contractor(X).
engineer(m).
contractor(m).

% Part 8
first_or_second(X):-passenger(X).
second_class(X):-not_wealthy(X).
wealthy(a).
not_wealthy(b).

% Part 9
graceful(X):-dancer(X).
student(ayesha).
dancer(ayesha).