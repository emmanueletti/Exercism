# Write your code for the 'Isogram' exercise in this file. Make the tests in
# `isogram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/isogram` directory.

class Isogram
  def self.isogram?(input)
    sanitized_input = input.downcase.scan(/\w/).join
    sanitized_input.chars.uniq.size == sanitized_input.size
  end
end
