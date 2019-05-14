myIncr xs = [x + 1|x<-xs]

main = print $ myIncr [1,1, -1, -2, -2, 2]