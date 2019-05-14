-- Реали󰑬оват󰑭 на 󰑱󰑬ыке Haskell функцию, которая разделяет 
-- исходный список из целых чисел на два списка: список 
-- положительных чисел и список отрицательных чисел.

split :: [Integer] -> ([Integer],[Integer])
split []     = ([], [])
split (x:xs) = if x > 0
               then (x: first, second)
               else (first, x: second)
               where
                   (first, second) = (split xs)

main = print $ split [1, 2, -1, -2] -- [1, 2] [-1, -2]