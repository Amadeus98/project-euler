
sumMultiples n = foldr (+) 0 z 
       where z = [x | x <- [0..n], x `mod` 3 == 0 || x `mod` 5 == 0] 
