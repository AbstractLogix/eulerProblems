module Problem1 where

-- One liner. The function sum can be replaced with a foldr (+) 0
prob1 = sum [x | x <- [1..999], x `rem` 3 == 0 || x `rem` 5 == 0]
