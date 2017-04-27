# Pseudocode release 0
# Method create_fake_name takes string argument
# create consonant and vowel reference arrays
# split name string by spaces
# swap first and last elements of array
# join array back into a string
# for each letter in string, change letter to next vowel or consonant, as
# appropriate
# return string

def increment_letter_by_type(char)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = [*'a'..'z'] - vowels
  is_capital = ('A'..'Z').include?(char)
  char = char.downcase

    if vowels.include?(char)
      char = vowels[(vowels.index(char) + 1) % vowels.length]
    elsif consonants.include?(char)
      char = consonants[(consonants.index(char) + 1) % consonants.length]
    end
    char = char.upcase if is_capital
    char
end

def create_fake_name(string)
  result = ''
  string = string.split(' ')
  string[0], string[-1] = string[-1], string[0]
  string = string.join(' ')

  string.each_char do |char|
    result += increment_letter_by_type(char)
  end
  result
end

#####Driver Code######

p create_fake_name("josh leichtung")
p create_fake_name("Josh Leichtung")
p create_fake_name("Michael J. Fox")
p create_fake_name("Sinead O'Connor")
p "Should be Vussit Gimodoe: #{create_fake_name("Felicia Torres")}"

####Release 1######

loop do
  puts "Input a name to be create a spy from or enter \"quit\" to exit"
  string = gets.chomp
  break if string.downcase == 'quit'
  puts "Your spy name is: #{create_fake_name(string)}" if !string.empty?
end
