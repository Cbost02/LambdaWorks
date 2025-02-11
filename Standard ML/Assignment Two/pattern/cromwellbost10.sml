(* FUNCTION NAME: filter() *)

(* DESCRIPTION: This function filters out any unwanted elements by applying its function parameter.*)
fun filter(_,nil) = nil
|   filter(P,x::xs) = if P x then x::filter(P,xs) else filter(P,xs);


(* FUNCTION NAME: getNumbers() *)

(* DESCRIPTION: Returns a list of numbers within the range of n>=a.*)
fun getNumbers(n,a) =
    if a=n then n :: nil
    else a :: getNumbers(n,a+1);
    
    

(* FUNCTION NAME: isPrime() *)

(* DESCRIPTION: Effectively return whether or not 'n' is a prime number. 'i' MUST be 2 for the function to work 
                properly!!!  *)
fun isPrime(n,i) = 
    if n<=1 orelse (n mod i) = 0 then false
    else if n=2 orelse i>= (n div 2) then true
    else isPrime(n,i+1);
    

(* FUNCTION NAME: plist() *)

(* DESCRIPTION: Returns a list of prime numbers up to the specified integer 'n'*)    
fun plist(n) = filter(fn x => isPrime(x,2),getNumbers(n,0));
    
