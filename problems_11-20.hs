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


--16
dropEvery :: [a] -> Int -> [a]
dropEvery list n = [fst x | x <- (zip list [1..]), mod (snd x) n > 0]

--17
split :: [a] -> Int -> [[a]]
split list n = [front, back]
  where front = take n list
        back  = drop n list

--18
slice :: [a] -> Int -> Int -> [a]
slice list a b = take (b - a + 1) (drop (a - 1) list)

--19
rotate :: [a] -> Int -> [a]
rotate xs n =
  let m = if n >= 0 then n else n + length xs
  in (drop m xs) ++ (take m xs)

--20
removeAt :: Int -> [a] -> [a]
removeAt _ [] = []
removeAt n xs = [fst x | x <- (zip xs [1..]), (snd x) /= n]

