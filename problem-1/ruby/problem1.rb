$max = 999 

def sumDivisibleBy(n)
  p = ($max/n).floor 
  (n*(p*(p+1))/2).floor 
end 

puts sumDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15)