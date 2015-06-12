$MAX = 0

def sumDivisibleBy(n)
  p = ($MAX/n).floor 
  (n*(p*(p+1))/2).floor 
end 

def problem1(args)
  $MAX = args.shift.to_i
  total = 0
  sum = 1  
  
  args.each do |i|
    total += sumDivisibleBy(i.to_i)
    sum *= i.to_i 
  end 
  
  puts (total -= sumDivisibleBy(sum))
end 

problem1(ARGV)