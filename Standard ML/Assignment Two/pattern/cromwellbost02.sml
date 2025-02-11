(* FUNCTION NAME: helper() *)
(* DESCRIPTION: This is the helper function to nele() *)
fun helper(_,_,nil) = nil
|   helper(0,a,(_::xs)) = helper(a,a,xs)
|   helper(a,b,x::xs) = x :: helper(a-1,b,x::xs);


(* FUNCTION NAME: nele() *)
(* DESCRIPTION: Returns a list which repeats each element 'a' times. *)
fun nele(L,a) = helper(a,a,L);