-- Kata: https://www.codewars.com/kata/559a28007caad2ac4e000083/train/haskell
-- Author: ramazanemreosmanoglu <github.com/ramazanemreosmanoglu>


fib :: [Integer]
fib = 0 : 1 : zipWith (+) fib (tail fib)

perimeter :: Integer -> Integer
perimeter n = ((*) 4 . sum . take (fromIntegral (n+2))) fib
