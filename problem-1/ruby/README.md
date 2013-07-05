# Problem 1 Using Ruby 

Aan initial solution might involve iterating through each number less than 1000 and verifying if it's divisible by 3 or 5. Instead, we can use a little clever math (provided by the kind people at Project Euler) and create a function which floors the quotient of a division: 

    $MAX = 999
    def sumDivisibleBy(n)
		  p = ($MAX/n).foor
			(n*(p*(p+1))/2).floor
	  end

Finally, we can ouput the result using the `puts` function: 

    puts sumbDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15)