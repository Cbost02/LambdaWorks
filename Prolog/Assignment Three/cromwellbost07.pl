oddths([],[]).
oddths([A],[A]).
oddths([X,_|Zs], Ans) :- oddths(Zs,Ans2), Ans = [X|Ans2].