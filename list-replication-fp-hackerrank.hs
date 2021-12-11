import Data.List

f :: Int -> [Int] -> [Int]
f _ [] = []
f n (x:xs) = (take n (repeat x))++(f n xs)
