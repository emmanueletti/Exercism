# Write your code for the 'Luhn' exercise in this file. Make the tests in
# `luhn_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/luhn` directory.

class Luhn
  def self.valid?(digits)
    return false if digits.match?(/[a-z-#%]/i)
    return false if digits.strip.size == 1 && digits.strip == "0"

    sanitized_input = digits.scan(/\d/).flatten.map(&:to_i).reverse

    result = []
    (0...sanitized_input.size).each do |i|
      output = sanitized_input[i]
      output *= 2 if i.odd?
      output -= 9 if output > 9
      result.push(output)
    end

    result.sum % 10 == 0
  end
end
