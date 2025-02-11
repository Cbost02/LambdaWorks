(* FUNCTION NAME: inc1(int * (int * int) list) *)

(* DESCRIPTION: Function considers both a single int and (int * int) list. If the first element of each tuple is equal to the int parameter, then the function increments the 2nd tuple elemenet by 1. *)

fun inc1(a, L: (int * int) list) =
	if null L then nil
	else if a = #1(hd L) then (#1(hd L), 1+(#2(hd L))) :: inc1(a,tl L)
	else hd L :: inc1(a, tl L);