humidity(X,high):-not(sky(X,cloudy)).
sky(X,cloudy):-not(humidity(X,high)).

not(hot(today)).
not(humidity(X,high)):-not(hot(X)).
not(sky(X,cloudy)):-not(rain(X)).

hot(X):-humidity(X,high).
rain(X):-sky(X,cloudy).