--21
insertAt :: a -> [a] -> Int -> [a]
insertAt a [] _ = [a]
insertAt a xs index = front ++ middle ++ back
  where front  = take (index - 1) xs
        middle = [a] 
        back   = drop (index - 1) xs 


--22
range :: (Integral a) => a -> a -> [a]
range x y = [x..y]


--23
--24
--TODO



