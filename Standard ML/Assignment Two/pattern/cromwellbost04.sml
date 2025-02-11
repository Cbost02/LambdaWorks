(* FUNCTION NAME: helper() *)
(* DESCRIPTION: This is the helper function to ntri()! *)
fun helper(n,a,b,c) =
    if n<=a then nil
    else a + (a+b) :: helper(n,a+1,b+c,c+1);

(* FUNCTION NAME: ntri() *)
(* DESCRIPTION: This function will return a list of triangular numbers within a certain range.

    Ex: ntri(5) => prints tri numbers from 1 to 15 
        ntri(4) => print tri numbers from 1 to 10*)    
fun ntri(n) = helper(n,0,1,0);