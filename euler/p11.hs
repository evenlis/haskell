import Data.List
import EulerUtils
p11 = head [a | a <- triangleStream, divisors a > 500]
  where divisors x = product (map ((+1).length) (group (primeFactors x)))