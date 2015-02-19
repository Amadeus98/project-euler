#!/usr/bin/ruby

require 'Prime'

def problem3(args)

  puts Prime.prime_division(args[0].to_i).max.max

end

problem3(ARGV)