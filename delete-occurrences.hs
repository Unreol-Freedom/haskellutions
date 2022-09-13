-- Kata: https://www.codewars.com/kata/554ca54ffa7d91b236000023/haskell
module Codewars.Kata.Deletion where

import Data.List (splitAt)

count :: Eq a => [a] -> a -> Int
count [] _ = 0
count (x:xs) e
  | x == e = 1 + count xs e
  | otherwise = count xs e

getRepetition :: Eq a => Int -> [a] -> Int
getRepetition n l = (count (fst (splitAt n l)) (l !! n)) + 1

deleteNth :: [Int] -> Int -> [Int]
deleteNth lst n = snd $ unzip $ filter cond (zip [0..] lst)
  where cond (i, _) = (getRepetition i lst) <= n
