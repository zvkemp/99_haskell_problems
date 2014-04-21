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

--4
myLength :: [a] -> Int
myLength []     = 0
myLength (x:xs) = 1 + myLength xs

--5
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

--6
isPalindromic :: (Eq a) => [a] -> Bool
isPalindromic l = l == (myReverse l)


--7
--TODO


--8
compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs)
  | x == (head xs) = compress xs
  | otherwise = x : compress xs
