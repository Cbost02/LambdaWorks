(* FUNCTION NAME: pairStarHelper(char list) *)

(* DESCRIPTION: helper function for the main function: pairStar(). returns char list *)


fun pairStarHelper(nil) = nil
  | pairStarHelper(x::nil) = x::nil
  | pairStarHelper(x::y::zs) = 
    if x=y then x :: #"*" :: pairStarHelper(y::zs)
    else x::pairStarHelper(y::zs);



(* FUNCTION NAME: pairStar(string) *)

(* DESCRIPTION: Considers a string and attaches a star bewteen two of the same characters within the string. 

fun pairStar(L) = implode(pairStarHelper(explode(L)));