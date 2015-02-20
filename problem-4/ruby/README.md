# Problem 4 Using Ruby 

Finding a palindrome in Ruby is easy thanks to the built-in `reverse` string method. In order to check if an integer is a palindrome, we can first convert it to a string using the `to_s` method and then use `reverse`: 

    def palindrome(n)
      n.to_s.reverse == n.to_s
    end 
    
Our `palindrome` function therefore returns true if the number is a palindrome, or false if it isn't. In order to find all palindromes which are the product of two 3-digit numbers, we use the `each` method to iterate twice over the set of 100 to 999 and add their product to an array if it passes the palindrome test: 

    palindromeList = []
   
    (100..999).each do |x|
      (100..999).each do |y|
        if palindrome(x*y)
          palindromeList.push(x*y)
        end
      end
    end
   
The maximum of the array can then be found using the `max` method: 

    puts palindromeList.max 
    
We can encapsulate this in a function and call it from the command line to solve the problem: 

    def problem4
      palindromeList = []
      ...
      puts palindromeList.max 
    end 
    
    problem4 
    
    ...
    
    $> ruby problem4.rb 
    
