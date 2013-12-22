import EulerUtils
p2 = sum [a | a <- (take 40 fibs), a<=4000000, a `mod` 2 == 0]