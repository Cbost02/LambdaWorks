(* FUNCTION NAME: min2(int list) *)

(* DESCRIPTION: Function considers an int list and implements a linear search algorithm to find the 2nd smallest element.*)

fun min2(L) = 
    if null(tl L) then 0
    else if null(tl(tl L)) then hd(tl L)
    else if hd L > hd(tl L) then min2(hd(tl L) :: hd L :: tl(tl L))
    else if hd(tl(tl L)) < hd L then min2(hd(tl(tl L)) :: hd L :: hd(tl(tl L)) :: tl(tl(tl L)))
    else if hd(tl(tl L)) > hd L andalso hd(tl(tl L)) < hd(tl L)
    then min2(hd L :: hd(tl(tl L)) :: tl(tl(tl L)))
    else min2(hd L :: hd(tl L) :: tl(tl(tl L)));