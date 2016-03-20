-- Compile for best results -o

main  = do
  print $ primeSumGenerator

-- The functions primes and isprime are taken from this implementation of
-- the Sieve of Eratosthenes https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

primes :: [Integer]
primes    = 2 : [x | x <- [3..], isprime x]

isprime :: Integer -> Bool
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x)
  where
    factorsToTry x = takeWhile (\p -> p * p <= x) primes


primeSumGenerator = sum $ takeWhile (<1999999) primes
