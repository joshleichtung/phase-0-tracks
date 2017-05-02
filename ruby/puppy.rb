# SPECIES ------------------------
# Canis lupus familiaris
#
# CHARACTERISTICS ----------------
# Eyelash length: varies
# Friendly: yes
# Eye count: 2
# Name: varies
# Color: varies
# Nose: wet
# legs: 4
#
# BEHAVIOR -----------------------
# Jump
# Tail Wag
# Bark
# Lick

class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(x)
    x * 7
  end

  def shake_hands
    puts "*holds out paw*"
  end
end

###############Driver###############

fido = Puppy.new
ball = "ball"
p fido.fetch(ball)
fido.speak(5)
fido.roll_over
p "3 human years is #{fido.dog_years(3)} dog years"
fido.shake_hands
