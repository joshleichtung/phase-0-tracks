class Santa
  def initialize(gender = "N/A", ethnicity = "N/A")
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "HO,ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    puts "I don't even know #{reindeer}, but they are at the bottom of my list!" unless
    @reindeer_ranking.index(reindeer)
    @reindeer_ranking.push(@reindeer_ranking.delete(reindeer) || reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
end

#####Driver Code#####
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Oreo")

facebook_genders = ["Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans Person", "Trans* Person", "Trans Woman", "Trans* Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []
20.times do
  santas.push Santa.new(facebook_genders[rand(facebook_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
end

santas.each {|santa| p santa}

santa.get_mad_at("Belinda")
santa.get_mad_at("Dasher")
santa.gender = "new gender"
santa.celebrate_birthday
puts "\n\nNew santa should have @gender = 'new gender', and @reindeer_ranking should
 have Dasher last and Belinda 2nd to last"
p santa
puts "Santa's age (should be 1): #{santa.age}"
puts "Santa's ethnicity (should be 'N/A'): #{santa.ethnicity}"
