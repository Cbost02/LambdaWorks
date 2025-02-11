(* FUNCTION NAME: helper() *)
(* DESCRIPTION: This is the helper function to isFact() *)

fun helper(a,b,c) =  if a<b then false
                     else if a=b then true
                    else helper(a,b*c,c+1);


(* FUNCTION NAME: isFact *)
(* DESCRIPTION: checks to see if the given value 'n' is a factorial number. *)
fun isfact(n) = helper(n,1,1);