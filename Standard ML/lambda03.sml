
(* #5 - both styles *)
fun maxl(L) =
	if null(tl L) then hd L
	else if hd L > hd(tl L) then maxl(hd L :: tl(tl L))
	else maxl(tl L);



fun maxl(x::nil) = x
  | maxl(x::y::ys) = if x > y then maxl(x :: ys) else maxl(y::ys);



(* #6 - both styles *)

fun suml(L) =
	if null L then 0
	else if null(hd L) then suml(tl L)
	else hd(hd L) + suml(tl(hd L) :: tl L);


fun suml(nil) = 0
  | suml(nil::ys) = suml(ys)
  | suml((x::xs)::ys) = x + suml(xs :: ys);



(* #7 - both styles *)

fun oddths(L) =
	if null L then nil
	else if null(tl L) then hd L :: nil
	else hd L :: oddths((tl(tl L)));


fun oddths(nil) = nil
  | oddths(x::nil) = x :: nil
  | oddths(x::_::xs) = x :: oddths(xs);


(* #11 - pattern style *)

fun divideL(nil) = nil
	|		divideL(x::xs) = (x::nil) :: divideL(xs);

fun conquer([n], []) = [n]
  | conquer([n], [x]) = 
      if n >= x then [x, n]
      else [n, x]
  | conquer([n], x::y::zs) = 
      if y >= n andalso x <= n then x :: n :: y :: zs
      else if n <= x then n :: x :: y :: zs
      else x :: y :: conquer([n], zs);




fun isLL ([]: 'a list list) = true
  | isLL ([] :: _) = false
  | isLL ((_ :: _) :: rest) = isLL rest;


fun mergesort(L) =
  if null(tl L) then (hd L :: nil)
  else if isLL(L) then mergesort((conquer([hd(tl L)],[hd L]) :: tl(tl L)))
  else mergesort(divideL(L));
