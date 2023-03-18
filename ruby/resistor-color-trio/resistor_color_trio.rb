# Write your code for the 'Resistor Color Trio' exercise in this file. Make the
# tests in `resistor_color_trio_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-trio` directory.

class ResistorColorTrio
  def initialize(data)
    @colors = data[0, 2]
    @multiplier = data.last.to_i
  end

  def label
    value = colors.inject("") do |acc, el|
      p colors
      p COLORS.index(el), "index"
      p COLORS
      acc + COLORS.index(el).to_s
    end

    multiplied_value = value * 10**multiplier
    "Resistor value: #{value * 10**multiplier}"
  end

  private

  COLORS = %w[black brown red orange yellow green blue violet grey white]

  attr_reader :colors, :multiplier

  def human_readable_string
  end
end
