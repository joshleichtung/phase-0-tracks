class Santa
  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "HO,ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end
end

#####Driver Code#####
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Oreo")

