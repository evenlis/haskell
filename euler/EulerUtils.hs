module EulerUtils where

fibs = 1:1:zipWith (+) fibs (tail fibs)

--primes = sieve [2..]
  --where sieve (x:xs) = x : sieve (filter ((/= 0) . (`mod` x)) xs)

primesBelow n = takeWhile (<n) primes

primeFactors n = factor n primes
  where
    factor n (prime:primes)
      | prime*prime > n = [n]
      | n `mod` prime == 0 = prime:factor(n`div`prime) (prime:primes)
      | otherwise = factor n primes

primes = 2 : filter ((==1) . length . primeFactors) [3,5..]

triangle 1 = 1
triangle x = x + triangle (x-1)

triangleStream = tail (scanl (+) 0 [1..])