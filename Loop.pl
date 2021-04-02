guess:- loop(start).
loop(25):- write("You Guessed It!").
loop(Other):-
    Other\= 25,
    write("Guess?"), nl,
    read(Guess),
    write(Guess),
    write(" is the Wrong Guess"), nl,
    loop(Guess).