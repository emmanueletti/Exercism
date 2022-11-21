# Write your code for the 'Leap' exercise in this file. Make the tests in
# `leap_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/leap` directory.

class Year
  def self.leap?(year)
    @@year = year
    (evenly_divisible_by_4? && evenly_divisible_by_400?) || (evenly_divisible_by_4? && !evenly_divisible_by_100?)
  end

  def self.evenly_divisible_by_4?
    year % 4 == 0
  end

  def self.evenly_divisible_by_100?
    year % 100 == 0
  end

  def self.evenly_divisible_by_400?
    year % 400 == 0
  end

  def self.year
    @@year
  end

  private_class_method(:year, :evenly_divisible_by_4?, :evenly_divisible_by_100?, :evenly_divisible_by_400?)
end
