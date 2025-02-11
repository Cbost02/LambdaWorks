(* FUNCTION NAME: multin(int list) *)

(* DESCRIPTION: Function considers a list of 3 elements ONLY, all of which are of type int. It multiplies the (hd) by the hd(tl L), hd(tl(tl L) times. A better way of looking at this would be (a == hd L) by (b == hd(tl L), (c == hd(tl(tl L)) times *)


fun multin(x::y::z::_) =
  let
    val a = x
    val b = y
    val c = z
  in
    if c= ~1 then nil
    else ((a * b) div b) :: multin[a*b,b, c-1]
 end;