(* FUNCTION NAME: delnthcHelper(`a list * int) *)

(* DESCRIPTION: Function is a helper to the main function: delnthc; returns a char list. *)

fun delnthcHelper(L,n) =
	if null L then nil
	else if n=1 then delnthcHelper(tl L, n-1)
	else hd L :: delnthcHelper(tl L, n-1);


(* FUNCTION NAME: delnthc(string * int) *)

(* DESCRIPTION: Function considers a string that will be theoretically indexed by using an integer parameter (n). The n-th char will be deleted from the string. *)

fun delnthc(L,n) = implode(delnthcHelper(explode(L),n));