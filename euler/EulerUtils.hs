module EulerUtils where
fibs = 1:1:zipWith (+) fibs (tail fibs)