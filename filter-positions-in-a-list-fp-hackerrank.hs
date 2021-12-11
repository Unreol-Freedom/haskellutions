-- https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem?isFullScreen=true

f :: [Int] -> [Int]
f lst = [x | (i, x) <- zip [0..] lst, odd i]
