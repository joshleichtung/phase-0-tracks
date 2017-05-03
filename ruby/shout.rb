module Shout
  def yell_angrily(words)
    words + "!!!!" + " :("
  end
  def yelling_happily(words)
    words.upcase + "!!!!" + " :D"
  end
end

class Goat
  include Shout
end

class Toddler
  include Shout
end

###Driver Code ###
puts "***Goat Shouts***"
billy = Goat.new
puts billy.yell_angrily("gwaaaaah")
puts billy.yelling_happily("gwaaaaah")

puts "\n***Toddler Shouts***"
annie = Toddler.new
puts annie.yell_angrily("I don't want to go to bed")
puts annie.yelling_happily("ice cream")

