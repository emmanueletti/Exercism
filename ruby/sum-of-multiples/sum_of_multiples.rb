# Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
# `sum_of_multiples_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sum-of-multiples` directory.

class SumOfMultiples
  def initialize(*args)
    @nums = args
    @multiples = []
  end

  def to(end_value)
    (1...end_value).each do |candidate|
      check_if_multiple(candidate)
    end
    multiples.sum
  end

  private

  def check_if_multiple(candidate)
    nums.each do |num|
      if is_multiple_of?(num: num, candidate: candidate)
        multiples.push(candidate)
        break
      end
    end
  end

  def is_multiple_of?(num:, candidate:)
    candidate % num == 0
  end

  attr_reader :nums, :multiples
end
