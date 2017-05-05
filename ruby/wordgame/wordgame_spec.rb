# Class Word Game
# initialize set guesses = []
# new_game method accepts string for the word to be guessed, returns string with
# dummy characters
#   Assign word to instance variable
# guess method accepts a single character and returns a hash with
# correct_guesses, guess count, is_complete bool.
#   IF guess not previously submitted
#     insert guess into @guesses unless it already exists
#     update correct guesses string
#     check if game is won
#  ELSE return false

require_relative 'wordgame'

describe WordGame do
  let(:game) { WordGame.new }

  it "creates a new game" do
    expect(game.new_game("test")).to eq "----"
    expect(game.new_game("antidisestablishmentarianism")).to eq "----------------------------"
  end

  it "accepts a char guess and returns the game status" do
    game.new_game("test")
    expect(game.guess("z")).to eq "----"
    expect(game.guess("t")).to eq "t--t"
  end

  it "tracks how many guesses have been made" do
    game.new_game("abcd")
    guesses = ('a'..'d').to_a
    4.times { game.guess(guesses.pop) }
    expect(game.guess_count).to eq 4
    game.guess('z')
    expect(game.guess_count).to eq 5
    game.guess('z')
    expect(game.guess_count).to eq 5
  end

  it "knows when the word is solved" do
    game.new_game("a")
    expect(game.solved?).to be false
    game.guess("a")
    expect(game.solved?).to be true
  end
end
