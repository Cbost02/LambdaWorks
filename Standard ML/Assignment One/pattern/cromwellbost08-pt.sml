
(* FUNCTION NAME: min2(int list) *)

(* DESCRIPTION: Function considers an int list and implements a linear search algorithm to find the 2nd smallest element.*)


fun min2(_::nil) = 0
|   min2(_::b::nil) = b
|   min2(a::b::c::ds) =
    if a > b then min2(b :: a :: (c::ds))
    else if c < a then min2(c :: a :: c :: ds)
    else if c > a andalso c < b then min2(a :: c :: ds)
    else min2(a :: b :: ds);