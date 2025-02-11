divideL([],[]).
divideL([X|Xs],Ans) :- divideL(Xs,Ans2), Ans = [[X|[]]|Ans2].

conquer([N],[],N).
conquer([N],[X|[]],Ans) :- N >= X, Ans = [X,N].
conquer([N],[X|[]],Ans) :- Ans = [N,X].
conquer([N],[X,Y|Zs],Ans) :- Y >= N, X =< N, Ans = [X,N,Y|Zs].
conquer([N],[X|Xs],Ans) :- N =< X, Ans = [N,X|Xs].
conquer([N],[X,Y|Zs],Ans) :- N >= Y, conquer([N],Zs,Ans2), Ans = [X,Y|Ans2].


isLL([[_|_]|_]).


mergesort([X],X).
mergesort([A,B|Cs], Ans) :- isLL([A,B|Cs]), conquer(B,A,Ans3), mergesort([Ans3|Cs],Ans).
mergesort([X|Xs],Ans) :- divideL([X|Xs],Ans2), mergesort(Ans2,Ans).