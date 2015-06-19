#!/usr/bin/ruby

require 'Prime'

def problem10(args)

  puts (Prime.take_while { |p| p < (args[0].to_i) }).inject(:+)

end

problem10(ARGV)