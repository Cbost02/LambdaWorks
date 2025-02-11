remv(_,[],[]).
remv(A,[X|Xs],Ans) :- A==X, remv(A,Xs,Ans).
remv(A,[X|Xs],Ans) :- remv(A,Xs,Ans2), Ans = [X|Ans2].

remvdub([],[]).
remvdub([X|Xs],Ans) :- remv(X,[X|Xs],Ans2), Ret = Ans2, remvdub(Ret,Ans3), Ans = [X|Ans3].