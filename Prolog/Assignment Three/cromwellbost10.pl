isPrimeHelper(_,1).
isPrimeHelper(A,B) :- A mod B =\= 0, B1 is B-1, isPrimeHelper(A,B1).


isPrime(A) :- Sub is A-1, isPrimeHelper(A,Sub).

append([],[],[]).
append([],[Y|Ys],Ans) :- append([],Ys,Ans2), Ans = [Y|Ans2].
append([X|Xs],L2,Ans) :- append(Xs,L2,Ans2), Ans = [X|Ans2].


primeton(2,[2]).
primeton(N,Ans) :- isPrime(N), N1 is N-1, primeton(N1,Ans2), append(Ans2,[N],Ans).
primeton(N,Ans) :- N1 is N-1, primeton(N1,Ans).