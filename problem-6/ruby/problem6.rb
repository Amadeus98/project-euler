#!/usr/bin/ruby

def problem6(args)
  sum = 0
  sumSquared = 0

  (1..args[0].to_i).each do |n|
    sum += n
    sumSquared += n*n
  end

  puts (sum*sum - sumSquared)
end

problem6(ARGV)