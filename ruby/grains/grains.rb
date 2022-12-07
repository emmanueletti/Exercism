# Write your code for the 'Grains' exercise in this file. Make the tests in
# `grains_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your `ruby/grains`
# directory.

class Grains
  class << self
    def square(value)
      raise ArgumentError if value <= 0 || value > 64
      calculate_exponential_growth(value)
    end

    def total
      (1..64).sum { |n| square(n) }
    end

    private

    def calculate_exponential_growth(value)
      1 * 2**(value - 1)
    end
  end
end
