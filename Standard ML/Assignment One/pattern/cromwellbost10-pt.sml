(* FUNCTION NAME: zeroAdder(`a list) *)

(* DESCRIPTION: Function accepts a parameter of type `a list and returns an integer with a number of zeros depending on length of the list. 
											   Ex: zeroAdder([3,4])   => 100
											   Ex: zeroAdder([3,4,1]) => 1000 
											   Ex: zeroAdder(nil)     => 1 *)

fun zeroAdder(nil) = 1
|   zeroAdder(_::ys) = 10 * zeroAdder(ys);


(* FUNCTION NAME: str2intHelper(char list) *)

(* DESCRIPTION: This function serves as an helper function to the main function: str2int(L)*)

fun str2intHelper(nil) = 0
|   str2intHelper(#"~"::ys) = ~(str2intHelper(ys))
|   str2intHelper(x::ys) = (ord(x) - 48) * (zeroAdder((x::ys)) div 10) + str2intHelper(ys);


(* FUNCTION NAME: str2intHelper(string) *)

(* DESCRIPTION: Function considers a string and returns an int. 
This function effectively converts any string-represented number into an integer.*)

fun str2int(L) = str2intHelper(explode L);