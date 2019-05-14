mysum :: [Integer] -> Integer
mysum []     = 0
mysum (x:xs) = x + (mysum xs)

main = print $ mysum [5, 6, 7]