-- https://www.hackerrank.com/challenges/fp-hello-world-n-times/problem?isFullScreen=true

hello_worlds :: Int -> [Char] -> [Char]
hello_worlds 1 s = s
hello_worlds n s = s++"\n"++hello_worlds (n-1) s

main :: IO()
main = do
    n <- readLn :: IO Int
    putStrLn $ hello_worlds n "Hello World"

