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
    if vowels.include?(char)
      char = vowels[(vowels.index(char) + 1) % vowels.length]
    elsif consonants.include?(char)
      char = consonants[(consonants.index(char) + 1) % consonants.length]
    end
    char = char.upcase if is_capital
    char
end

def create_fake_name(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = [*'a'..'z'] - vowels
  result = ''
  string = string.split(' ')
  string[0], string[-1] = string[-1], string[0]
  string = string.join(' ')
  string.each_char do |char|
    if vowels.include?(char)
      result += vowels[(vowels.index(char) + 1) % vowels.length]
    elsif consonants.include?(char)
      result += consonants[(consonants.index(char) + 1) % consonants.length]
    else
      result += char
    end
  end
  result
end

#####Driver Code######

p create_fake_name("josh leichtung")
