# Problem 8 using Haskell 

We begin by converting the string to a list of integers using the `digitToInt` method provided by the [`Data.Char` library](https://hackage.haskell.org/package/base-4.7.0.2/docs/Data-Char.html): 

    import Data.Char (digitToInt)
    
    numString = map digitToInt "731...450" 

Next, we iterate through the list using a bit of recursion: 
 
    subLists n xs
      | length xs < n = []
      | otherwise     = (take n xs):(subLists n $ tail xs)
      
Here we use the `take` method to prepend the first `n` number of elements to a new list. The tail of the list is composed of a recursive call to `subLists` which takes the same initial list, minus the first element, which is removed by the `tail` function. The `$` operator is used to reduce the number of parentheses (better explained [here](http://stackoverflow.com/questions/940382/haskell-difference-between-dot-and-dollar-sign)). 

However, Problem 8 asks that we provide the product such a list, so we need to use the `product` method to find the product of each new list segment `n` elements long: 

    getProducts n xs
      | length xs < n = []
      | otherwise     = (product $ take n xs):(getProducts n $ tail xs)
  
This new function is almost identical to the previous, except we now create a list of products of `n` elements instead of a list of lists `n` elements long. 

The maximum of this new list can then be found by using the `maximum` method within a new function: 

    largestProduct n = maximum $ getProducts n numString
    
The solution to the problem is found by calling the following: 
 
    $> largestProduct 13 
    
