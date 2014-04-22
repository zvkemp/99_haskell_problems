--31



--32 GCD
my_gcd :: (Integral a) => a -> a -> a
my_gcd x y
  | mod a b == 0 = b
  | otherwise    = my_gcd b (mod a b)
  where a = abs $ max x y
        b = abs $ min x y

myGCD = my_gcd
