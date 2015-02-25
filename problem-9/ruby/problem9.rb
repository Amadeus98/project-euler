def problem9

  (1..500).each do |m|
    (1..m).each do |n|
      if m*(m+n) == 500
        puts (m**4 - n**4)*(2*m*n)
      end
    end
  end

end

problem9