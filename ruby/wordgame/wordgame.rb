class WordGame
  def initialize(string = nil)
    new_game(string)
  end

  attr_reader :string

  def new_game(string)
    @guesses = []
    @string = string
    correct_guesses
  end

  def guess(char)
    return nil if char.length > 1 || char.class != String

    char = char.downcase
    @guesses.push(char) unless @guesses.include?(char)
    {status: correct_guesses,
     guesses: guess_count,
     solved?: solved?,
     guesses_left: guesses_left}
  end

  def correct_guesses
    if @string
      @string.downcase.gsub(/[^ #{@guesses.join}]/, '-')
    else
      nil
    end
  end

  def guess_count
    @guesses.count
  end

  def wrong_guess_limit
    word_length = @string.delete(' ').length
    case
    when word_length <= 2
      6
    when word_length <= 4
      8
    when word_length <= 10
      6
    else
      5
    end
  end

  def guesses_left
    wrong_guess_limit - wrong_guesses
  end

  def wrong_guesses
    @guesses.select {|letter| !@string.include?(letter)}.count
  end

  def solved?
    @string && !correct_guesses.include?('-')
  end

  def word_valid?
    if @string.nil? || @string =~ /[^A-Z a-z]/
      false
    else
      true
    end
  end
end


#####Driver Code####
test = WordGame.new('test')
p "Guesses left: #{test.guesses_left}"
puts "Welcome to Word Game!!!!!"
puts "Guessing player, close your eyes and don't look while the other player enters a word for you to guess."
game = WordGame.new(gets.chomp)

until game.word_valid?
  puts "Please enter a valid word to play with. Still no peaking guessing player"
  game.new_game(gets.chomp)
end

until game.solved? || game.guesses_left < 1
  puts "Guessing player - please enter a character or enter 'give up' to quit"
  guess = gets.chomp
  until guess.downcase == 'give up' ||
      (guess.class == String && guess.length == 1 && guess =~ /[A-Za-z]/)
    puts "Please input a valid single alphabetical character"
    guess = gets.chomp
  end

  if guess.downcase == 'give up'
    puts "\nCouldn't take it, huh? Bye."
    break
  end

  game_state = game.guess(guess)
  puts %Q|Game Status: #{game_state[:status]}
  Wrong Guesses Left: #{game_state[:guesses_left]}
  |
  puts "\nYou lost, so so badly!" if game_state[:guesses_left] < 1
  puts "\nYou Won! Huzzah!" if game_state[:solved?]
end
