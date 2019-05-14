myreverse :: [Integer] -> [Integer]
myreverse []         = []
myreverse (x:xs)     = (myreverse xs) ++ [x]


myreverse2 xs = [xs !! k| k <- [(length xs-1), (length xs -2)..0]]

main = print $ myreverse [1,1, -1, -2, -2, 2]