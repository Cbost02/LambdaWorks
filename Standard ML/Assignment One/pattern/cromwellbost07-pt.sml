(* FUNCTION NAME: inc1(int * (int * int) list) *)

(* DESCRIPTION: Function considers both a single int and (int * int) list. If the first element of each tuple is equal to the int parameter, then the function increments the 2nd tuple elemenet by 1. *)

fun inc1(_,nil) = nil
  | inc1(a,((b,c)::ds)) = 
    if a=b then (b,c+1) :: inc1(a,ds)
    else (b,c) :: inc1(a,ds);
