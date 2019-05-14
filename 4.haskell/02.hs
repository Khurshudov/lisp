mymax :: [Integer] -> Integer
mymax [el]     = el
mymax (x:xs) = 
            if x > (mymax xs)
            then x
            else (mymax xs)

main = print $ mymax [5, 6, 7, 2]