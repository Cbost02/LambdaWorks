import Data.Char
--Useful functions--

explode [] = []
explode (x:xs) = x : explode xs



implode [] = ""
implode (x:xs) = x : implode xs


-- #1 --
changeSign x = -x

prod 0 _ = 0
prod a b
 | a < 0 = -(prod (changeSign a) b)
 | b < 0 = -(prod a (changeSign b))
 | otherwise = b + (prod (a-1) b)


-- #2 --
helper [] _ = []
helper (x:xs) a 
 | a==1 = helper xs (a-1)
 | otherwise = x : helper xs (a-1)

delnthc list a = implode (helper (explode list) a)


-- #3 --
helperTwo [] _ = []
helperTwo (x:xs) a
 | a==1 = x : helperTwo xs (a-1)
 | otherwise = helperTwo xs (a-1)

dispnthc list a = helperTwo list a


-- #4 --

helperThree [] = []
helperThree [x] = [x]
helperThree (x:y:ys)
 | x==y = x : '*' : helperThree (y:ys)
 | otherwise = x : helperThree (y:ys)

pairStar list = helperThree list

-- #5 --
remv _ [] = []
remv a (x:xs)
 | a==x = remv a xs
 | otherwise = x : (remv a xs)


-- #6 --
remvdub [] = []
remvdub (x:xs) = x : remvdub (remv x (x:xs))

-- #7 --
inc1 _ [] = []
inc1 a ((b,c) : ds)
 | a==b = (b,c+1) : (inc1 a ds)
 | otherwise = (b,c) : (inc1 a ds)


-- #8 --
min2 (_:[]) = 0
min2 (_:b:[]) = b
min2 (a:b:c:ds)
 | a > b = min2 (b:a:(c:ds))
 | c < a = min2 (c:a:c:ds)
 | c > a && c < b = min2 (a:c:ds)
 | otherwise = min2 (a:b:ds)

-- #9 --
app _ [] = []
app [] (y:ys) = y : app [] ys
app (x:xs) yList = x : app xs yList


int2strHelper 0 = []
int2strHelper n
 | n<0 = '-' : int2strHelper (abs n)
 | otherwise = (app (int2strHelper (n `div` 10)) ((chr ((n `mod` 10) + 48)) : []) )


int2str list = int2strHelper list


-- #10 --
zeroAdder [] = 1
zeroAdder (_:xs) = 10 * (zeroAdder xs)

str2intHelper [] = 0
str2intHelper('-':xs) = (-(str2intHelper xs))
str2intHelper(x:xs) = (((ord x) - 48) * ((zeroAdder (x:xs)) `div` 10) + (str2intHelper xs))

str2int list = str2intHelper list


-- #11 --
touppHelper [] = []
touppHelper (x:xs)
 | ((ord x) <= 122) && ((ord x) >= 97) = (chr ((ord x)-32)) : touppHelper xs
 | otherwise = x : touppHelper xs

toupp list = touppHelper list


-- to be completed...--

-- #12--



