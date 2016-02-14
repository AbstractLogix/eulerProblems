-- definitely looking for a more efficient way to write this
answerProb2 = foldr1 (+) [x | x <- prob2, x `rem` 2 == 0, x < 4000000]

-- canonical zipWith implementation
prob2 = 0 : 1 : zipWith (+) prob2 (tail prob2)
