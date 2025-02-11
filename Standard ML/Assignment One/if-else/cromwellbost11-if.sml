(* FUNCTION NAME: touppHelper(char list) *)

(* DESCRIPTION: This function serves as an helper function to the main function: toupp(L)*)

fun touppHelper(L) =
	if null L then nil
	else if ord(hd L) < 97 orelse ord(hd L) > 122 then hd L :: touppHelper(tl L)
	else chr(ord(hd L) - 32) :: touppHelper(tl L);




(* FUNCTION NAME: toupp(string) *)

(* DESCRIPTION: This function effectively capitalizes any string*)

fun toupp(L) = implode(touppHelper(explode L));