remv(_,[],[]).
remv(A,[X|Xs],Ans) :- A==X, remv(A,Xs,Ans).
remv(A,[X|Xs],Ans) :- remv(A,Xs,Ans2), Ans = [X|Ans2].