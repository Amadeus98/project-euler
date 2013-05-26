
factor 1 = []
factor n = let prime = head $ dropWhile ((/= 0) . mod n) [2..n]
           in (prime :) $ factor $ div n prime 
