(* FUNCTION NAME: changeSign(int) *)

(* DESCRIPTION: Function will consider a integer parameter and flip the sign. Ex -> 3 = ~3, ~45 = 45 *)

fun  changeSign(x) = ~x;


(* FUNCTION NAME: product(int * int) *)

(* DESCRIPTION: Function will consider 2 integers and returns the product. This is done recursively with the base case being b=0. *)

fun product(_,0) = 0
  | product(a,b) = if b < 0 then ~(product(a, changeSign(b)))
                  else if a < 0 then ~(product(changeSign(a), b))
                  else a + product(a,b-1);