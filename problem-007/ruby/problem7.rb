#!/usr/bin/ruby

require 'Prime'

def problem7(args)

  puts Prime.first(args[0].to_i).max

end

problem7(ARGV)