edge(a,b).
edge(a,c).
edge(a,d).
edge(a,f).

edge(b,a).
edge(b,c).
edge(b,e).

edge(c,a).
edge(c,b).
edge(c,d).
edge(c,e).

edge(d,a).
edge(d,c).
edge(d,e).

edge(e,b).
edge(e,c).
edge(e,d).
edge(e,f).

edge(f,a).
edge(f,e).

colour(red).
colour(green).
colour(blue).
colour(yellow).

has_colour(Node,Colour).

colorCode([],[]).
colorCode([Node|Nodes], [Code|Codes]) :-
    colorCode(Nodes, Codes),
    Code = has_colour(Node, Colour),
    colour(Colour),
    noconflict(Code, Codes).

noconflict(_,[]).
noconflict(Code1,[Code2|Codes]) :- 
	not(conflict(Code1,Code2)), 
	noconflict(Code1,Codes).

conflict(has_colour(A,Colour),has_colour(B,Colour)):-edge(A,B).