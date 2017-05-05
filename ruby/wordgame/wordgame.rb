class WordGame
  def initialize(guesses = [], string = nil)
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
     guesses_left: wrong_guess_limit - guess_count}
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
      3
    when word_length <= 4
      6
    when word_length <= 10
      8
    else
      18
    end
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


# #####Driver Code####
#
# puts "Welcome to Word Game!!!!!"
# puts "Guessing player, close your eyes and don't look while the other player enters a word for you to guess."
# game = WordGame.new(gets.chomp)
#
# p game.correct_guesses
# until game.word_valid?
#   puts "Please enter a valid word to play with. Still no peaking guessing player"
#   game.new_game(gets.chomp)
# end
# p game.guess_count
# p game.guess_limit
# unless game.solved? || game.guess_count >= game.guess_limit
#   puts "Guessing player - please enter a character or enter 'give up' to quit"
#   guess = gets.chomp
#   # break if guess.downcase == 'give up'
# end
