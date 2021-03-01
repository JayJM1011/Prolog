% Function calling and reading it as a statement
% Rule overloading.
lbw(batsman).
hitting_stump(random).
bowled(ball).
out(batsman) :- lbw(batsman), hitting_stump(ball).
out(batsman) :- bowled(ball).
is_out :-
    out(batsman),
    write('Batsman is out as it\'s an LBW and the ball is hitting the stumps or it\'s a bolwed').