male(s_rao).
male(ptm_krishna).
male(srinivas).
male(scs_rao).
male(bhavyesh).
male(bhaagyesh).
male(sb_rao).

female(sb_rambha).
female(ph_vathi).
female(sujana).
female(lr_lakshmi).
female(k_lilavathi).
female(anushka).

parent(s_rao, ph_vathi).
parent(s_rao, scs_rao).
parent(s_rao, sb_rao).

parent(sb_rambha, ph_vathi).
parent(sb_rambha, scs_rao).
parent(sb_rambha, sb_rao).

parent(ph_vathi, sujana).
parent(ph_vathi, srinivas).
parent(ptm_krishna, sujana).
parent(ptm_krishna, srinivas).

parent(scs_rao, bhavyesh).
parent(scs_rao, bhaagyesh).
parent(lr_lakshmi, bhavyesh).
parent(lr_lakshmi, bhaagyesh).

parent(sb_rao, anushka).
parent(k_lilavathi, anushka).

father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), female(X).
sibling(X,Y):- father(Z,X), father(Z,Y), mother(W,X), mother(W,Y), X\=Y.
grandparent(X,Y):- parent(X,Z), parent(Z,Y).
grandfather(X,Y):- father(X,Z), (father(Z,Y) ; mother(Z,Y)).
grandmother(X,Y):- mother(X,Z), (father(Z,Y) ; mother(Z,Y)).
cousin(X,Y):- grandparent(Z,X),grandparent(Z,Y), not(sibling(X,Y)), X\=Y.
uncle(X,Y):-male(X), parent(Z,Y), sibling(Z,X).
aunt(X,Y):-female(X), parent(Z,Y), sibling(Z,X).