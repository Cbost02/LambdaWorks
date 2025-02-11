helper(_,_,[],[]).
helper(A,B,[X|Xs],Ans) :- X==A, B1 is B+1, helper(A,B1,Xs,Ans2), Ans = [B|Ans2].
helper(A,B,[_|Xs],Ans) :- B1 is B+1, helper(A,B1,Xs,Ans).

inde(A,List,Ans) :- helper(A,1,List,Ans).