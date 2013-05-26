
palindrome = [x*y | x <- [100..999], y <- [100..999], reverse (show (x*y)) == show (x*y)]

findMaxPalindrome = maximum palindrome
