module Problem6 where

{- Find the difference between the sum of the squares of the first one
   hundred natural numbers and the square of the sum.
-}


-- xs in this case will be a list of the first one hundred natural numbers

answerProblem6 xs = (sumThenSquare xs) - (sumMapSquare xs)

square = \x -> x ^ 2

sumMapSquare xs = sum  $ map square xs

sumThenSquare xs = square $ sum xs
