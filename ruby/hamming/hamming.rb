# Write your code for the 'Hamming' exercise in this file. Make the tests in
# `hamming_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/hamming` directory.

class Hamming
  # ITERATION 2
  def self.compute(first, second)
    raise ArgumentError if first.size != second.size
    (0...first.size).count { |i| first[i] != second[i] }
  end

  # ITERATION 1
  # def self.compute(first_strand, second_strand)
  #   second_strand_chars = second_strand.chars
  #   raise ArgumentError if first_strand.size != second_strand.size
  #   delta = 0
  #   first_strand.chars.each_with_index do |el, i|
  #     delta += 1 if el != second_strand_chars[i]
  #   end
  #   delta
  # end
end
