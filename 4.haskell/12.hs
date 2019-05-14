 -- Реали󰑬оват󰑭 на 󰑱󰑬ыке Haskell функци󰑧 ПЕРЕСЕЧЕНИЕ, 
 -- формирующую пересечение двух мно󰑨еств.

find :: Integer->[Integer]->Bool
find _ [] = False
find v (x:xs) = if x == v
                then True
                else find v xs

union :: [Integer] -> [Integer] -> [Integer]
union lst1 lst2 = [x | x<-lst1, (find x lst2)]

main = print $ union [1, 5, 6] [1, 2, 6] -- [1, 6]