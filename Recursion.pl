parent(max, alice).
parent(alice, stephan).
related(X, Y):-
    parent(Y, X); parent(X, Y).
related(X, Y):-
    parent(X, Z); parent(Z, X),
    related(Z, Y).

count_till_10(10):-
    write(10).
count_till_10(Other):-
    write(Other), nl,
    X is Other+ 1,
    count_till_10(X).