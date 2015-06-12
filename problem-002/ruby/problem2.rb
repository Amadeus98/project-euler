#!/usr/bin/ruby

def problem2(args)
  fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }

  n = 1
  sum = 0

  while fibonacci[n] < args[0].to_i
    if fibonacci[n] % 2 == 0
      sum += fibonacci[n]
    end
    n += 1
  end

  puts (sum)
end

problem2(ARGV)