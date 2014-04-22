--21
insertAt :: a -> [a] -> Int -> [a]
insertAt a [] _ = [a]
insertAt a xs index = front ++ middle ++ back
  where front  = take (index - 1) xs
        middle = [a] 
        back   = drop (index - 1) xs 
