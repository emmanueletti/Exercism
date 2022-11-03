# Write your code for the 'Acronym' exercise in this file. Make the tests in
# `acronym_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/acronym` directory.

class Acronym
  def self.abbreviate(words)
    # iteration 1
    # words.split(/[\s-]/).map(&:chr).join("").upcase

    # iteration 2
    words.scan(/\b[a-z]/i).join.upcase
  end
end
