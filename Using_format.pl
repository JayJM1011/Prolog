box(cookies, empty).
emotion(jay, sad) :- box(cookies, empty).
how_is_jay :-
    emotion(X, Y),
    format('~w is ~s ~n', [X, Y]).