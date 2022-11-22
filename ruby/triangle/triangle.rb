# Write your code for the 'Triangle' exercise in this file. Make the tests in
# `triangle_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/triangle` directory.

class Triangle
  attr_reader :sides
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    valid_triangle? && num_different_lengths_seen == 1
  end

  def isosceles?
    valid_triangle? && (equilateral? || num_different_lengths_seen == 2)
  end

  def scalene?
    valid_triangle? && num_different_lengths_seen == 3
  end

  private

  def valid_triangle?
    return false if sides.include?(0)
    return false if sides[0..1].sum < sides[2]
    return false if sides[1..2].sum < sides[0]
    return false if (sides[2] + sides[0]) < sides[1]
    true
  end

  def num_different_lengths_seen
    sides.uniq.size
  end
end
