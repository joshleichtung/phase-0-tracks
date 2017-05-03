module Shout
  def self.yell_angrily(words)
    words + "!!!!" + " :("
  end
  def self.yelling_happily(words)
    words.upcase + "!!!!" + " :D"
  end
end

###Driver Code ###
puts Shout.yell_angrily("hodor")
puts Shout.yelling_happily("hodor")
