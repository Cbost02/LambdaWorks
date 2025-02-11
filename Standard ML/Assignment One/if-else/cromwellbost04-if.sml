(* FUNCTION NAME: pairStarHelper(char list) *)

(* DESCRIPTION: helper function for the main function: pairStar(). returns char list *)

fun pairStarHelper(L) =
	if null L then nil 
  	else if null(tl L) then hd L :: nil
	else if hd L = hd(tl L) then hd L :: #"*" :: pairStarHelper(tl L)
	else hd L :: pairStarHelper(tl L);



(* FUNCTION NAME: pairStar(string) *)

(* DESCRIPTION: Considers a string and attaches a star bewteen two of the same characters within the string. *)

fun pairStar(L) = implode(pairStarHelper(explode(L)));
