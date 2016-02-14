-- definitely looking for a more efficient way to write this
answerProb2 = sum $ filter (even) $filter (<3999999) $ take 35 prob2
-- canonical zipWith implementation
prob2 = 0 : 1 : zipWith (+) prob2 (tail prob2)
