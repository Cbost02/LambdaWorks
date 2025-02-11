dispnth([],_,_).
dispnth([X|Xs],1,Ans) :- End is -9, dispnth(Xs, End, Ans), Ans = X.
dispnth([_|Xs],N,Ans) :- N1 is N-1, dispnth(Xs, N1, Ans).