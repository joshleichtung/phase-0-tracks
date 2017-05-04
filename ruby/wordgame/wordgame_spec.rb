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
end
