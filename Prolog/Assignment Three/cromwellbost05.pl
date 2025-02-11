maxl([X],X).
maxl([X,Y|Zs],Ans) :- X < Y, maxl([Y|Zs],Ans).
maxl([X,Y|Zs],Ans) :- X > Y, maxl([X|Zs],Ans).