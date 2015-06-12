
findProduct = [(m^4 - n^4)*(2*m*n) | m <- [1..500], n <- [1..m], m*(m+n) == 500]