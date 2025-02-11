(* FUNCTION NAME: touppHelper(char list) *)

(* DESCRIPTION: This function serves as an helper function to the main function: toupp(L)*)

fun touppHelper(nil) = nil
  | touppHelper(x::ys) = 
    if ord(x) < 97 orelse ord(x) > 122 then x :: touppHelper(ys)
    else chr(ord(x) - 32) :: touppHelper(ys);




(* FUNCTION NAME: toupp(string) *)

(* DESCRIPTION: This function effectively capitalizes any string*)

fun toupp(L) = implode(touppHelper(explode L));