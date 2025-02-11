
(* FUNCTION NAME: rmnil() *)
(* DESCRIPTION: This functions detects if there are any empty lists within a list list type. If any are found,
                they will be removed.*)
fun rmnil(nil) = nil
|   rmnil(nil::xs) = rmnil(xs)
|   rmnil(x::xs) = x :: rmnil(xs);