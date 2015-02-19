# Problem 4 Using Haskell 

An elegant solution for finding all of the palindrome products of two 3-digit numbers is provided by this [StackOverflow question](http://stackoverflow.com/questions/1258145/palindromes-in-haskell): 

    palindrome = [x*y | x <- [100..999], y <- [100..999], reverse (show(x*y)) == show (x*y)] 

Finding the maximum of the list returned by `palindrome` is done by calling the built-in function `maximum`: 

    maximum palindrome

`maximum` takes a list that can be ordered and returns the largest item [(source)](http://learnyouahaskell.com/recursion#maximum-awesome). 
