% #1 %
product(0,_,0).
product(A,B,Ans) :- A<0, A1 is -A, product(A1,B,Ans2), Ans is -Ans2.
product(A,B,Ans) :- B<0, B1 is -B, product(A,B1,Ans3), Ans is -Ans3.
product(A,B,Ans) :- A1 is A-1, product(A1,B,Ans4), Ans is B+Ans4.


% #2 %
helper([],_,[]).
helper([X|Xs],A,Ans) :- A==1, A1 is A-1, helper(Xs,A1,Ans).
helper([X|Xs],A,Ans) :- A1 is A-1, helper(Xs,A1,Ans2), Ans = [X|Ans2].

delnthc(L,A,Ans) :- helper(L,A,Ans).