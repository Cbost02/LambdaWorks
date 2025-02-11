(* FUNCTION NAME: dispnthcHelper(`a list * int) *)

(* DESCRIPTION: Function is a helper to the main function: dispnthc; returns an `a list. *)

fun dispnthcHelper(nil,_) = nil
  | dispnthcHelper((x::ys),1) = x :: dispnthcHelper(ys, 1-1)
  | dispnthcHelper((_::ys),n) = dispnthcHelper(ys, n-1);



(* FUNCTION NAME: dispnthc(string * int) *)

(* DESCRIPTION: Function considers a string that will be theoretically indexed by using an integer parameter (n). The n-th char will be diplayed from the string. *)



fun dispnthc(L,n) = hd(dispnthcHelper(explode(L),n));
