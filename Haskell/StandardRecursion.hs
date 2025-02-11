import Prelude hiding(div)

fact :: Integer -> Integer
fact n
 | n==0 = 1
 | n>0 = fact (n-1) * n
 | otherwise = error "Fac only defined on negative numbers" -- Generate your own errors!! --


-- Primitive Recursion --

power2 :: Integer -> Integer
power2 n
 | n==0 = 1
 | n>0 = 2* power2 (n-1)


sumFacs :: (Integer -> Integer) -> Integer -> Integer
sumFacs f n
 | n==0 =  f 0
 | n > 0 = sumFacs f (n-1) + f n



-- General Recursion --

fib :: Integer -> Integer
fib n
 | n==0 = 0
 | n==1 = 1
 | n>1 = fib (n-2) + fib (n-1)


div :: Integer -> Integer -> Integer
div a b
 | a == 0 = 0
 | otherwise = 1 + div (a-b) b


-- Better way div2(), but not comprehensive

div2 :: Integer -> Integer -> Integer
div2 a b
 | a == 0 = 0
 | a<0 = error "These nummbers are not divisible!!!"
 | otherwise = 1 + div2 (a-b) b

-- Even better way: div3(), but not acurate. Algorithm is the same as div() & div2(), but adds the
-- remainder to the quotient. We'll come back to this!!

div3 :: Integer -> Integer -> Integer
helper :: Integer -> Integer

helper a  = a

div3 a b
 | a<b = helper(a)
 | otherwise = 1 + div3 (a-b) b

-- Curious about remainder()?

remainder :: Integer -> Integer -> Integer

remainder a b
 | a<b = a
 | otherwise = remainder (a-b) b


-- (Almost) Best way div4()

div4 :: Integer -> Integer -> Integer

div4 a b
 | a==0 = 0
 | a<0 = -(div4 (-(a)) b)
 | b<0 = -(div4 a (-(b)))
 | otherwise = 1 + div4 (a-b) b






