helper(_,_,[],[]).
helper(0,A,[_|Xs],Ans) :- helper(A,A,Xs,Ans).
helper(A,B,[X|Xs],Ans) :- A1 is A-1, helper(A1,B,[X|Xs],Ans2), Ans = [X|Ans2].

nele(List,A,Ans) :- helper(A,A,List,Ans).  