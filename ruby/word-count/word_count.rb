# Write your code for the 'Word Count' exercise in this file. Make the tests in
# `word_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/word-count` directory.

class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.delete("\n")
  end

  def word_count
    phrase.split(/[^'\w]/).each_with_object({}) do |word, hash|
      word.delete_prefix!("'")
      word.delete_suffix!("'")
      if word.strip.length > 0
        hash[word] ? hash[word] += 1 : hash[word] = 1
      end
    end
  end

  private

  attr_reader :phrase
end
