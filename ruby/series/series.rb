# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

# iteration 2
class Series
  def initialize(values)
    @values = values
  end

  def slices(size)
    raise ArgumentError, "size longer than line length" if @values.size < size
    @values.chars.each_cons(size).map(&:join)
  end
end

# class Series
#   def initialize(str)
#     @str = str
#   end
#   def slices(size)
#     raise ArgumentError, 'size longer than line length' if @str.size < size
#     @str.chars.each_cons(size).map(&:join)
#   end
# end

# iteration 1
# class Series
#   def initialize(values)
#     @values = values.chars
#     @sliced_result = []
#   end

#   def slices(length_to_subsect)
#     validate_arg(length_to_subsect)
#     generate_slices(length_to_subsect)
#   end

#   private

#   def validate_arg(length_to_subsect)
#     raise ArgumentError if values.size < length_to_subsect || length_to_subsect < 1
#   end

#   def create_valid_subsection(value, index, length_to_subsect)
#     subsection = values[index, length_to_subsect].join
#     subsection.length == length_to_subsect ? subsection : nil
#   end

#   def generate_slices(length_to_subsect)
#     values.each_with_index do |value, index|
#       sliced_result << create_valid_subsection(value, index, length_to_subsect)
#     end
#     sliced_result.compact
#   end

#   attr_reader :values, :sliced_result
# end
