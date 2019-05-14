myodd :: [a] -> [a]
myodd []     = []
myodd (x1:x2:xs) = x1:(myodd xs)
myodd (x1:xs) = x1:(myodd xs)

main = print $ myodd [5, 6, 7, 2, 2]