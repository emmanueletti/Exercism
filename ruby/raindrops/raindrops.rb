# Write your code for the 'Raindrops' exercise in this file. Make the tests in
# `raindrops_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/raindrops` directory.

class Raindrops
  def self.convert(num)
    output = ""
    output << "Pling" if num % 3 == 0
    output << "Plang" if num % 5 == 0
    output << "Plong" if num % 7 == 0
    output << num.to_s if output.empty?
    output
  end
end
