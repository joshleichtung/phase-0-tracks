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
  def initialize
    puts "Initializing new puppy instance..."
  end

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
puts "****Puppy Test Code****"
fido = Puppy.new
ball = "ball"
p fido.fetch(ball)
fido.speak(5)
fido.roll_over
p "3 human years is #{fido.dog_years(3)} dog years"
fido.shake_hands


##############Release 2##############

class Guitar
  def initialize
    puts "Initializing new guitar instance..."
  end

  def play_chord(chord)
    puts "playing #{chord} chord"
    chord
  end

  def play_note(note)
    puts "playing #{note}"
    note
  end
end

class ElectricGuitar < Guitar
  def initialize
    super
    puts "Electric!!!!!!"
  end

  def feedback
    puts "SQuEEeeEARrArRAM!!!!!!!!!!!"
  end

  def distort
    puts "CruuuuuuuNnNNCh"
  end
end


##############Driver Code##############
puts "\n\n *****Guitar Test Code*****"
guit = Guitar.new
p "Play A#Maj: #{guit.play_chord("A#Maj")}"
p "Play B-flat: #{guit.play_note("B-flat")}"
puts "\n\n *****Electric Guitar Test Code*****"
elec = ElectricGuitar.new
p "Play EMaj: #{elec.play_chord("EMaj")}"
p "Play F-sharp: #{elec.play_note("F-sharp")}"
elec.feedback
elec.distort
