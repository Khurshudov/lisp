skal :: [[Integer]] -> Integer
skal [[],[]]         = 0
skal ((x1:xs1):(x2:xs2):_)         = (x1 * x2) + (skal [xs1, xs2])

main = print $ skal [[1, 5], [2, 5]]