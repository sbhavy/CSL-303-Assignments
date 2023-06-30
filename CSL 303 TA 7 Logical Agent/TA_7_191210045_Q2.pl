% parent(A,B) = A is parent of B.

% children of each node.
parent(a,b).
parent(a,c).
parent(a,d).

parent(b,e).
parent(b,f).

parent(c,g).
parent(c,h).
parent(c,i).

parent(d,j).

parent(e,k).

parent(f,l).
parent(f,m).

parent(h,n).

parent(i,o).
parent(i,p).

parent(j,q).
parent(j,r).
parent(j,s).

parent(m,t).

ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z),ancestor(Z,Y).
