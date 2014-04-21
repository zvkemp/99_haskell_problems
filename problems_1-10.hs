--1
myLast :: [a] -> a
myLast []     = error "empty list"
myLast [x]    = x
myLast (x:xs) = myLast xs

--2
myButLast :: [a] -> a
myButLast []     = error "empty list"
myButLast [x]    = error "only one element"
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs

--3
elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list or list too small"
elementAt (x:xs) n
  | n == 1 = x
  | otherwise = elementAt xs (n - 1)
