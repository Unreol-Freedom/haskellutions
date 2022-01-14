module RPN where

calc :: String -> Double
calc "" = 0
calc expr = head (foldl foldingFunc [] (words expr))
            where foldingFunc (x:y:ys) "*" = (x * y):ys
                  foldingFunc (x:y:ys) "+" = (x + y):ys
                  foldingFunc (x:y:ys)  "-" = (y - x):ys
                  foldingFunc (x:y:ys) "/" = (y / x):ys
                  foldingFunc x number = read number:x
