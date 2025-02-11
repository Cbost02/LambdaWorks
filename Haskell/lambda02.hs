import Data.Char
-- Lambda Functions --
smap _ [] = []
smap f (x:xs) = f x : smap f xs

sfilter _ [] = []
sfilter p (x:xs) = if p x then x : sfilter p xs else sfilter p xs

-- #1 --
helper _ _ [] = []
helper a b (x:xs)
 | x==a = b : (helper a (b+1) xs)
 | otherwise = helper a (b+1) xs


inde a list = helper a 1 list

-- #2 --

helperTwo _ _ []  = []
helperTwo 0 a (_:xs) = helperTwo a a xs
helperTwo a b (x:xs) = x : (helperTwo (a-1) b (x:xs))

nele list a = helperTwo a a list


-- #3 --

helperThree a b c
 | a<b = False
 | a==b = True
 | otherwise = helperThree a (b*c) (c+1)

isFact n = helperThree n 1 1

-- #4 --

helperFour n a b c
 | n<=a = []
 | otherwise = (a + (a+b)) : (helperFour n (a+1) (b+c) (c+1))

ntri n = helperFour n 0 1 0

-- #5 --

rmnil [] = []
rmnil ([]:xs) = rmnil xs
rmnil (x:xs) = x : rmnil xs


-- #6 --
helperSix list = smap (\x -> if (ord x) >= 97 then chr ((ord x) - 32) else x) list

chcase list = helperSix list

-- #7 --

infront1 a list = smap (\x -> a:x) list


-- #8 --
insea a [] = [[a]]
insea a (b:bs) = (a:b:bs) : smap (\x -> b:x) (insea a bs)


-- #9 --
cat [] list = list
cat (x:xs) list = x : cat xs list

smap2 _ [] = []
smap2 f (x:xs) = cat (f x) (smap2 f xs)

permu 1 = [[1]]
permu n = smap2 (\y -> insea n y) (permu (n-1))

-- #10 still needs work --

getNumbers n a
 | a==n = n : []
 | otherwise = a : getNumbers n (a+1)

isPrime n i
 | n<=1 || (mod n i) == 0 = False
 | n==2 || i>= (div n 2) = True
 | otherwise = isPrime n (i+1)

plist n = sfilter (\x -> isPrime x 2) (getNumbers n 0)





