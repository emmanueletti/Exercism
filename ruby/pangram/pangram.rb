# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.

class Pangram
  def self.pangram?(word)
    word.downcase.scan(/[a-z]/).flatten.uniq.count == 26
  end
end
