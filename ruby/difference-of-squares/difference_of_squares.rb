=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..num).sum ** 2
  end

  def sum_of_squares
    (1..num).sum { |i| i**2 }
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end

  private

  attr_reader :num
end
