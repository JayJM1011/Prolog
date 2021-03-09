% trace. is the debugger for Prolog
warm_blooded(penguin).
warm_blooded(human).

produce_milk(penguin).
produce_milk(human).

have_feather(penguin).
have_hair(human).

lay(egg).
mammal(X) :- warm_blooded(X), produce_milk(X), have_hair(X).