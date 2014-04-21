--11
--12
--13

--14
dupli :: [a] -> [a]
dupli []     = []
dupli (x:xs) = x : x : dupli xs
