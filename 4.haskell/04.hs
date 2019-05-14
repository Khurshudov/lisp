split :: [Integer] -> ([Integer],[Integer])
split []     = ([], [])
split (x:xs) = if x > 0
               then (x: first, second)
               else (first, x: second)
               where
                   (first, second) = (split xs)

main = print $ split [1, 2, -1, -2]