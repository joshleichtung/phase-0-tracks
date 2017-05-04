class WordGame
  def initialize
    @guesses = []
  end

  def new_game(string)
    @string = string
    @string.gsub(/[A-Za-z]/, '-')
  end
end
