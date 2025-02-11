-- Rock, Paper, Scissors: Enumerated Types


-- What are the types of 'Moves' you can choose in the game?

-- Datatype: 'Move'
-- Values : 'Rock', 'Paper', 'Scissors'
data Move  = Rock | Paper | Scissors
deriving (Show,Eq)

beat :: Move -> Move
beat Rock = Paper
beat Paper = Scissors
beat Scissors = Rock


lose :: Move -> Move
lose Rock = Scissors
lose Paper = Rock
lose _ = Paper -- Wildcard used since if the other cases aren't met, then this one runs by default!


	-- More on this example in Chapter 8!!!


-- Example Code #1--

data Result = Win | Lose | Draw
deriving (Show, Eq)

outcome :: Move -> Move -> Result

outcome Rock Scissors = Win
outcome Paper Rock = Win
outcome Paper Scissors = Lose
outcome Rock Paper = Lose
outcome Scissors Paper = Win
outcome Scissors Rock = Lose
outcome _ _ = Draw


--Example Code #2--

data Temp = Cold | Hot | Warm
deriving (Eq, Show, Ord)

data Season = Summer | Winter | Fall | Spring
deriving (Eq, Show, Ord)

match :: Season -> Temp
match Summer = Hot
match Winter = Cold
match Spring = Warm
match Fall = Warm

--Example Code #3--

data School = Eastern | Western | Notre_Dame
deriving(Eq, Show, Ord)

basic :: School -> Bool
basic Eastern = True
basic Western = if (56 `mod` 2) == 0 then True else False
basic Notre_Dame = if 10 > 12 then not(False) else True
