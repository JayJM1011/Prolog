parent(max, alice).
parent(alice, stephan).
related(X, Y):-
    parent(Y, X); parent(X, Y).
related(X, Y):-
    parent(X, Z); parent(Z, X),
    related(Z, Y).