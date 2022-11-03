# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.

class Matrix
  attr_reader :rows, :columns
  def initialize(matrix_string)
    @rows = matrix_string.lines.map { |line| line.split.map(&:to_i) }
    @columns = @rows.transpose
    # @matrix = matrix_string.split("\n").map(&:split).map do |col|
    #   col.map(&:to_i)
    # end
  end

  # def rows
  #   @matrix
  # end

  # def columns
  #   rows.transpose
  # end

  # janky transpose logic
  # def columns
  #   result = []
  #   temp = []
  #   row_length = rows.first.length
  #   (0...row_length).each do |row_index|
  #     rows.each do |row|
  #       temp << row[row_index]
  #     end
  #     result << temp
  #     temp = []
  #   end
  #   result.map do |col|
  #     col.map(&:to_i)
  #   end
  # end

  private

  attr_reader :matrix_array
end
