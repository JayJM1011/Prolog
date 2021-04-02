say_hi:-
    write("What\'s your Name?"), nl,
    read(X),
    write("Hi "), write(X), write("!").

fav_char:-
    write("What\'s your favourite character"), nl,
    get(X), format("ASCII value ~w is Character ", [X]),
    put(X).