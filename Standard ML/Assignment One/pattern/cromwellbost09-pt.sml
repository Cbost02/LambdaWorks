(* FUNCTION NAME: app(`a list * `a list) *)

(* DESCRIPTION: Function considers two lists and appends them together.*)

fun app(_, nil) = nil
|   app(nil, (y::ys)) = y :: app(nil, ys)
|   app((x::xs),(y::ys)) = x :: app(xs,(y::ys));



(* FUNCTION NAME: int2strHelper(int) *)

(* DESCRIPTION: This is the helper function to the main function: int2str().*)

fun int2strHelper(0) = nil
|   int2strHelper(n) =
    if n<0 then #"~" :: int2strHelper(abs(n))
    else app(int2strHelper(n div 10), chr((n mod 10) + 48) :: nil);
    

(* FUNCTION NAME: int2str(int) *)

(* DESCRIPTION: This function considers an integer and effectively converts it into a string.*)

fun int2str(n) = implode(int2strHelper(n));