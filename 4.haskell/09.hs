myMult10 xs = [x * 10|x<-xs]

main = print $ myMult10 [1,1, -1, -2, -2, 2]