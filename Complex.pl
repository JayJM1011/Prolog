customer(tim, smith, 250.459).
customer(tom, smith, 150.254).
get_det(FirstN, LastN) :-
    customer(FirstN, _, Due),
    % 2f shows upto 2 dec places
    format('~w ~s has $~2f due', [FirstN, LastN, Due]).