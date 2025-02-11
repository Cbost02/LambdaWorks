(* FUNCTION NAME: zeroAdder(`a list) *)

(* DESCRIPTION: Function accepts a parameter of type `a list and returns an integer with a number of zeros depending on length of the list. 
											   Ex: zeroAdder([3,4])   => 100
											   Ex: zeroAdder([3,4,1]) => 1000 
											   Ex: zeroAdder(nil)     => 1 *)

fun zeroAdder(L) = 
	if null L then 1
	else 10 * zeroAdder(tl L);




(* FUNCTION NAME: str2intHelper(char list) *)

(* DESCRIPTION: This function serves as an helper function to the main function: str2int(L)*)

fun str2intHelper(L) =
	if null L then 0
  else if hd L = #"~" then ~(str2intHelper(tl L))
	else (ord(hd L) - 48) * (zeroAdder(L) div 10) + str2intHelper(tl L);



(* FUNCTION NAME: str2intHelper(string) *)

(* DESCRIPTION: Function considers a string and returns an int. This function effectively converts any string-represented number into an integer.*)

fun str2int(L) = str2intHelper(explode L);