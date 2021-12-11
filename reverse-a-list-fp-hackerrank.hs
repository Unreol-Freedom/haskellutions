-- https://www.hackerrank.com/challenges/fp-reverse-a-list/problem?isFullScreen=false

rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs++[x]
