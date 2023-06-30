% Part 1
well_known1(X):-stud_prez1(X).
stud_prez1(me).

% Part 2
well_known2(X):-stud_prez2(X).
stud_prez2(me):-false.

% Part 3
well_known3(X):-stud_prez3(X).
stud_prez3(rajat).

% Part 4
g_sec1(rajat):-vp1(asha).
treasurer1(bharati):-vp1(asha).
not_vp1(asha):-not_g_sec1(rajat).
not_g_sec1(rajat).

% Part 5
g_sec2(rajat).
g_sec2(rajat):-vp2(asha).
treasurer2(bharati):-vp2(asha).