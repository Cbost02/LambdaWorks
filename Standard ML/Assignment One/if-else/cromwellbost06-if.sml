(* FUNCTION NAME: remv(`a * `a list) *)

(* DESCRIPTION: Function considers both a value and a list. If the value is detected within the list, the function will delete it.*)

fun remv(a, L) =
	if null L then nil
	else if a = hd L then remv(a, tl L)
	else hd L :: remv(a, tl L);
	

(* FUNCTION NAME: remvdub(`a list) *)

(* DESCRIPTION: Function considers both a list and detects duplicate elements. If duplicates are found, they will be deleted.*)
	
fun remvdub(L) =
	if null L then nil
	else hd L :: remvdub(remv(hd L,L));
	