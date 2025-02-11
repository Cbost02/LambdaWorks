(* FUNCTION NAME: delnthcHelper(`a list * int) *)

(* DESCRIPTION: Function is a helper to the main function: delnthc; returns a char list. *)

fun delnthcHelper(nil,_) = nil
  | delnthcHelper((_::ys), 1) = delnthcHelper(ys, 1-1)
  | delnthcHelper((x::ys), n) = x :: delnthcHelper(ys, n-1);




(* FUNCTION NAME: delnthc(string * int) *)

(* DESCRIPTION: Function considers a string that will be theoretically indexed by using an integer parameter (n). The n-th char will be deleted from the string. *)

fun delnthc(L, n) = implode(delnthcHelper(explode L, n));