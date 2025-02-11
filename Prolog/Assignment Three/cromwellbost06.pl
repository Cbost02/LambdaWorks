test([_|_]).

sum([],0).
sum([X|Xs],Ans) :- sum(Xs,Ans2), Ans is X + Ans2.


suml([],0).
suml([X|Xs],Ans) :- test(X), sum(X,Ans2), suml(Xs,Ans3), Ans is Ans2 + Ans3.
suml([X|Xs],Ans) :- suml(Xs,Ans4), Ans is X + Ans4.