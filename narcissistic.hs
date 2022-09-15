-- https://www.codewars.com/kata/5287e858c6b5a9678200083c/haskell
module Narcissistic where
import Data.Char (digitToInt)

narcissistic :: Integral n => n -> Bool
narcissistic n = (== n) . fromIntegral . sum . map (\x -> x^len) $ digits
  where digits = map digitToInt . show . toInteger $ n
        len = length digits
