f n = if even n
          then n `div` 2
          else 3*n + 1

collatz n = [a | let a = f a, a >= 1]

p14 = collatz 13
