app [] [] = []
app (x1:xs1) (x2:xs2) = (x1, x2):(app xs1 xs2)

main = print $ (app [1, 2, 3] ['a', 'b', 'c']) -- [(1,'a'),(2,'b'),(3,'c')]