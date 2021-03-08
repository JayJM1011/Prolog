% I am not obsessed with cookies this is just random
% I like sweets though
eats(sejal, last_cookie, box).
culprit(X) :- eats(X, last_cookie, box).
box(cookie, empty) :- eats(sejal, last_cookie, box).
sad(jay) :-
    box(cookie, empty).
angry(jay, X) :-
    box(cookie, empty),
    culprit(X).