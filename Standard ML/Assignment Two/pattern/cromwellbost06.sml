(* FUNCTION NAME: smap() *)
(* DESCRIPTION: This functions 'maps' or changes each element of a list by applying a lambda statement.*)
fun smap(F,nil) = nil
|   smap(F,x::xs) = F x :: smap(F,xs);


(* FUNCTION NAME: helper() *)
(* DESCRIPTION: This function serves as the helper function to chcase()!*)
fun helper(L) = smap(fn x => if ord(x) >= 97 then chr(ord(x) - 32) else x, L);


(* FUNCTION NAME: chcase() *)
(* DESCRIPTION: This function searches for lowercase char within a string 'L' and capitalizes them!*)
fun chcase(L) = implode(helper(explode L));