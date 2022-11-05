# Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
# `scrabble_score_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/scrabble-score` directory.

class Scrabble
  def initialize(letters)
    @letters = letters
  end

  def score
    @letters.chars.inject(0) do |sum, letter|
      sum += 1 if letter.match?(/[aeioulnrst]/i)
      sum += 2 if letter.match?(/[dg]/i)
      sum += 3 if letter.match?(/[bcmp]/i)
      sum += 4 if letter.match?(/[fhvwy]/i)
      sum += 5 if letter.match?(/k/i)
      sum += 8 if letter.match?(/[jx]/i)
      sum += 10 if letter.match?(/[qz]/i)
      sum
    end
  end
end
