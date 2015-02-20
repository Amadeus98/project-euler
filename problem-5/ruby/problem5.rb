#!/usr/bin/ruby

def problem5(args)

  puts (args[0].to_i..args[1].to_i).reduce(:lcm)

end

problem5(ARGV)