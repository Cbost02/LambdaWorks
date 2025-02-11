(* FUNCTION NAME: remv(`a * `a list) *)

(* DESCRIPTION: Function considers both a value and a list. If the value is detected within the list, the function will delete it.*)

fun remv(_, nil) = nil
  | remv(a,(x::ys)) = 
    if a=x then remv(a, ys)
    else x :: remv(a,ys);