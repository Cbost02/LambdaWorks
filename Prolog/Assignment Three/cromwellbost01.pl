delnth([],_,[]).
delnth([_|Xs],1,Ans) :- End is 0, delnth(Xs,End,Ans).
delnth([X|Xs],N,Ans) :- N1 is N-1, delnth(Xs,N1,Ans2), Ans = [X|Ans2].