
(* FUNCTION NAME: app(`a list * `a list) *)

(* DESCRIPTION: Function considers two lists and appends them together.*)

fun app(L1, L2) =
	if null L2 then nil
	else if null L1 then hd L2 :: app(L1, tl L2)
	else hd L1 :: app(tl L1, L2);



(* FUNCTION NAME: int2strHelper(int) *)

(* DESCRIPTION: This is the helper function to the main function: int2str().*)

fun int2strHelper(n) =
	if n=0 then nil
    else if n<0 then #"~" :: int2strHelper(abs(n))
	else app(int2strHelper(n div 10), chr((n mod 10) + 48):: nil);



(* FUNCTION NAME: int2str(int) *)

(* DESCRIPTION: This function considers an integer and effectively converts it into a string.*)

fun int2str(n) = implode(int2strHelper(n));