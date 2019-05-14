--Реали󰑬оват󰑭 на 󰑱󰑬ыке Haskell функци󰑧, которая преобразует исходный 
--список в список, в котором элементы написаны в 
-- обратном к исходному порядке.


myreverse :: [Integer] -> [Integer]
myreverse []         = []
myreverse (x:xs)     = (myreverse xs) ++ [x]


myreverse2 xs = [xs !! k| k <- [(length xs-1), (length xs -2)..0]]

main = print $ myreverse [1,1, -1, -2, -2, 2] -- [2,-2,-2,-1,1,1]