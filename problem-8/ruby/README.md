# Problem 8 using Ruby 

We first convert the string to an array of integers using the `split` string method and `map` array method: 

    numString = "731..450"
    
    numbers = numString.split("").map(&:to_i) 
    
The `split` method parses the string in an array of characters based on a given delimiter (in our chase, we parse it based on nothing as shown by `""`) and `map` applies the `to_i` method to each character, giving us an array of integers to work with. 
 
In order to find the product of an `n` long substring of our new `numbers` array, we take the leading `n` number of elements and use the `inject` method to multiply them together: 
  
    numbers[0..n].inject(&:*)
    
In order to iterate through the entire list and find the product of each `n`-length substring, we use a `while` loop and the `drop` array method: 

    while numbers.length >= `n` 
      ...
      numbers.numbers.drop(1) 
    end 
    
Since we have to find the largest product of all `n`-length substrings, we can store each product in a temporary array:  

    largestProduct = []
    
    while numbers.length >= n
      largestProduct.push(numbers[0..n].inject(&:*))
      numbers = numbers.drop(1)
    end
    
The largest product can then be found by using the `max` array method: 

    puts largestProduct.max 
    
The solution can be made more versatile by wrapping it in a function and using command line arguments: 

    def problem8(args)
    
    ... 
    
      while numbers.length >= args[0].to_i
        largestProduct.push(numbers[0..(args[0].to_i - 1)].inject(&:*))
        numbers = numbers.drop(1)
      end
    
    ...
     
    end 
    
    problem8(ARGV)
    
Which allows us to find the solution by running: 

    ruby problem8.rb 13 
    
