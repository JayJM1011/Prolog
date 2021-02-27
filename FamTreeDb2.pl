% Family with
% Vito as Grandfather, Husband of Mary, and Father of Tommy and Jack
% Tommy as Father of Adam, Conny and Shasha, Son of Vito and Mary, and Husband of Lucy
% Jack as Father of Eren, Armin, Eve and Kim, Son of Vito and Mary, and Husband of Sarah
% :- is if
% Father
father(vito,tommy).
father(vito,jack).
father(tommy,adam).
father(tommy,conny).
father(tommy,shasha).
father(jack,eren).
father(jack,armin).
father(jack,eve).
father(jack,kim).
% Mother
mother(mary,tommy).
mother(mary,jack).
mother(lucy,adam).
mother(lucy,conny).
mother(lucy,shasha).
mother(sarah,eren).
mother(sarah,armin).
mother(sarah,eve).
mother(sarah,kim).
% Gender
gender(vito,male).
gender(mary,female).
gender(tommy,male).
gender(lucy,female).
gender(adam,male).
gender(conny,male).
gender(shasha,female).
gender(jack,male).
gender(sarah,female).
gender(eren,male).
gender(armin,male).
gender(eve,female).
gender(kim,female).
% Grandfather
grandfather(X,Y):-father(X,Z),father(Z,Y).
% Great-Grandfather
greatgrandfather(X,Y):-father(X,Z),grandfather(Z,Y).
% Grandmother
grandmother(X,Y):-mother(X,Z),father(Z,Y).
% Great-Grandmother
greatgrandmother(X,Y):-mother(X,Z),grandfather(Z,Y).
% Grandchild
grandchild(X,Y):-grandfather(Y,X).
grandchild(X,Y):-grandmother(Y,X).
% Son
son(X,Y):-father(Y,X),gender(X,male).
son(X,Y):-mother(Y,X),gender(X,male).
% Daughter
daughter(X,Y):-father(Y,X),gender(X,female).
daughter(X,Y):-mother(Y,X),gender(X,female).
% Brother
brother(X,Y):-son(X,Z),father(Z,Y).
% Sister
sister(X,Y):-daughter(X,Z),father(Z,Y).
% Husband
husband(X,Y):-father(X,Z),mother(Y,Z).
% Wife
wife(X,Y):-father(Y,Z),mother(X,Z).
% Daughter-in-Law
daughterinlaw(X,Y):-son(Z,Y),wife(X,Z).
% Son-in-Law
soninlaw(X,Y):-son(Z,Y),husband(X,Z).
% Uncle
uncle(X,Y):-father(Z,Y),brother(X,Z).
uncle(X,Y):-grandfather(Z,Y),soninlaw(X,Z).
% Aunt
aunt(X,Y):-father(Z,Y),sister(X,Z).
aunt(X,Y):-grandfather(Z,Y),daughterinlaw(X,Z).
% Niece
niece(X,Y):-uncle(Y,X),gender(X,female).
niece(X,Y):-aunt(Y,X),gender(X,female).
% Nephew
nephew(X,Y):-uncle(Y,X),gender(X,male).
nephew(X,Y):-aunt(Y,X),gender(X,male).