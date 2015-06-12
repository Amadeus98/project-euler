
primes = 2 : [n | n<-[3,5..], all ((> 0).rem n) [3,5..floor.sqrt$fromIntegral n]]

nthPrime n = maximum (take n primes)