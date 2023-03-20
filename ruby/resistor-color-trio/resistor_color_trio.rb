# Write your code for the 'Resistor Color Trio' exercise in this file. Make the
# tests in `resistor_color_trio_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-trio` directory.

class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white]
  private_constant :COLORS

  def initialize(data)
    @colors = data[0, 2]
    @multiplier = COLORS.index(data.last) || (raise ArgumentError)
  end

  def label
    value_with_multiplier = colours_mapped_to_value

    if value_with_multiplier >= 1000
      divided_value = value_with_multiplier / 1000
      template_string % "#{divided_value} kiloohms"
    else
      template_string % "#{value_with_multiplier} ohms"
    end
  end

  private

  def colours_mapped_to_value
    value = colors.map { |c| COLORS.index(c) || (raise ArgumentError) }.join
    value.to_i * (10**multiplier)
  end

  def template_string
    "Resistor value: %s"
  end

  attr_reader :colors, :multiplier
end
