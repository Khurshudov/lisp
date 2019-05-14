rm :: [Integer] -> [Integer]
rm []         = []
rm [el]       = [el]
rm (x1:x2:xs) = if x1 == x2
                then x1:(rm xs)
                else x1:(rm (x2:xs))

main = print $ rm [1,1, -1, -2, -2, 2]