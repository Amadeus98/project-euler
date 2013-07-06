# Problem 1 Using Ruby 

Aan initial solution might involve iterating through each number less than 1000 and verifying if it's divisible by 3 or 5. Instead, we can use a little clever math (provided by the kind people at Project Euler) and create a function which floors the quotient, essentially summing all numbers divisible by `n`: 

    $MAX = 999
    def sumDivisibleBy(n)
		  p = ($MAX/n).foor
      (n*(p*(p+1))/2).floor
    end

Finally, we can ouput the result using the `puts` function: 

    puts sumbDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15)		

However, the program can be made a bit more versatile with command line arguments: 

    def problem 1(args) 
      $MAX = args.shift.to_i
      total = 0
      sum = 1  
    
      args.each do |i|
        total += sumDivisibleBy(i.to_i)
        sum *= i.to_i 
      end
      
      puts (total -= sumDivisibleBy(sum))
    end 

The first argument is assigned to the global variable `$MAX` for use in `sumDivisibleBy`. Now, the solution can be optained by running: 

    ruby problem1.rb 999 3 5 

