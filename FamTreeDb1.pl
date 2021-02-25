% Family Tree

% Family has Sam as Dad
% Martha as Mother
% Tom as Son
% Kalie as Daughter
% Family
family(sam,parent).
family(martha,parent).
family(tom,child).
family(kalie,child).
% Gender
gender(sam,male).
gender(martha,female).
gender(tom,male).
gender(kalie,female).
% Father
father(sam,tom).
father(sam,kalie).
% Mother
mother(martha,tom).
mother(martha,kalie).
% Son
son(tom,sam).
son(tom,martha).
% Daughter
daughter(kalie,sam).
daughter(kalie,martha).
% Husband
husband(sam,martha).
% Wife
wife(martha,sam).
% Brother
brother(tom,kalie).
% Sister
sister(kalie,tom).