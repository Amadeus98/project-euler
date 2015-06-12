#!/usr/bin/ruby

def palindrome(n)
  n.to_s.reverse == n.to_s
end

def problem4
  palindromeList = []

  (100..999).each do |x|
    (100..999).each do |y|
      if palindrome(x*y)
        palindromeList.push(x*y)
      end
    end
  end

  puts palindromeList.max
end

problem4