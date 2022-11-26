# Write your code for the 'Anagram' exercise in this file. Make the tests in
# `anagram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/anagram` directory.

class Anagram
  def initialize(word)
    @word = word
  end

  def match(candidates)
    candidates.select do |candidate|
      next if same_as_word?(candidate)
      anagram?(candidate)
    end
  end

  private

  def anagram?(candidate)
    same_num_of_letters?(candidate) && same_letters?(candidate)
  end

  def same_num_of_letters?(candidate)
    word_chars = characters(word)
    candidate_chars = characters(candidate)
    candidate_chars.difference(word_chars).empty?
  end

  def same_letters?(candidate)
    word_chars = characters(word)
    candidate_chars = characters(candidate)
    candidate_chars.sort == word_chars.sort
  end

  def characters(string)
    string.downcase.chars
  end

  def same_as_word?(candidate)
    characters(candidate) == characters(word)
  end

  attr_reader :word
end
