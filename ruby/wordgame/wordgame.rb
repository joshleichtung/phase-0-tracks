class WordGame
  def initialize
    @guesses = []
  end

  def new_game(string)
    @string = string.downcase
    @string.gsub(/[A-Za-z]/, '-')
  end

  def guess(char)
    if char.length > 1 || char.class != String
      return false
    else
      char = char.downcase
      @guesses.push(char) unless @guesses.include?(char)
    end
    correct_guesses
  end

  def correct_guesses
    @string.gsub(/[^ #{@guesses.join}]/, '-')
  end

  def guess_count
    @guesses.count
  end

  def solved?
    !correct_guesses.include?('-')
  end
end
