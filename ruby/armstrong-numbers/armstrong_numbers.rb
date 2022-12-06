# Write your code for the 'Armstrong Numbers' exercise in this file. Make the
# tests in `armstrong_numbers_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/armstrong-numbers` directory.

class ArmstrongNumbers
  class << self
    def include?(digits)
      seperated_values = digits.to_s.chars
      armstrong_sum = seperated_values.sum do |digit|
        armstrong_power(candidate: digit.to_i, num_of_digits: seperated_values.size)
      end

      armstrong_sum == digits
    end

    private

    def armstrong_power(candidate:, num_of_digits:)
      candidate**num_of_digits
    end
  end
end
