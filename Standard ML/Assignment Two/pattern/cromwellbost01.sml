fun helper(_,_,nil) = nil
|	helper(a,b,x::xs) = if x = a then b :: helper(a,b+1,xs)
 else helper(a,b+1,xs);
 
fun inde(a,L) = helper(a,1,L);

inde(1,[1,2,1,1,2,2,1]);