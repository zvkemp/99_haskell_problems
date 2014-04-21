--11
--12
--13

--14
dupli :: [a] -> [a]
dupli []     = []
dupli (x:xs) = x : x : dupli xs

--15
repli :: [a] -> Int -> [a]
repli [] _     = []
repli (x:xs) n = (take n (repeat x)) ++ repli xs n

