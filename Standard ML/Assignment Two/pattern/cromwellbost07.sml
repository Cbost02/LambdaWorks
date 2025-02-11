(* FUNCTION NAME: smap() *)
(* DESCRIPTION: This functions 'maps' or changes each element of a list by applying a lambda statement.*)

fun smap(_, nil) = nil
|   smap(F,x::xs) = F x :: smap(F,xs);


(* FUNCTION NAME: infront1() *)
(* DESCRIPTION: Inserts a specified value 'a' at the front of each list.*)
fun infront1(a,L) = smap(fn x => a::x, L);


infront1(1,[[1,2],nil,[3]]);