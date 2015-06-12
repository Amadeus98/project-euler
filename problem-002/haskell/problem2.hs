-- Create an infinite list of Fibonacci numbers

fibs = 0 : 1 : zipWith (+) fibs (tail fibs) 


-- Creating a list of Fibonacci Numbers 

fibList n = take n fibs 


-- Finding sum of even-valued terms 

fibSum n = foldr (+) 0 z 
  where 
       z = [x | x <- take 50 fibs, x < n, x `mod` 2 == 0] 
