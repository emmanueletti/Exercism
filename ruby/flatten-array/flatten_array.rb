# Write your code for the 'Flatten Array' exercise in this file. Make the tests
# in `flatten_array_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your `ruby/flatten-array`
# directory.

class FlattenArray
  class << self
    def flatten(array)
      result = []
      array.each do |el|
        next if el.nil?

        if el.instance_of?(Array)
          r2 = flatten(el)
          result = [*result, *r2]
        else
          result << el
        end
      end

      result
    end
  end
end
