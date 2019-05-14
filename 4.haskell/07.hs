repl :: Integer -> Integer -> [Integer] -> [Integer]
repl _ _ []         = []
repl v1 v2 (x:xs)     = if v1 == x
                        then v2:(repl v1 v2 xs)
                        else x:(repl v1 v2 xs)

main = print $ repl 1 55 [1,1, -1, -2, -2, 2]