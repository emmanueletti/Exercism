# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.

class SpaceAge
  attr_reader :age_in_seconds

  ORBITAL_EARTH_RATIO = {
    "mercury" => 0.2408467,
    "venus" => 0.61519726,
    "mars" => 1.8808158,
    "earth" => 1,
    "jupiter" => 11.862615,
    "saturn" => 29.447498,
    "uranus" => 84.016846,
    "neptune" => 164.79132
  }.freeze

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  ORBITAL_EARTH_RATIO.each do |planet, _|
    define_method("on_#{planet}") { seconds_to_earth_years / ORBITAL_EARTH_RATIO[planet] }
  end

  def seconds_to_earth_years
    in_mins = age_in_seconds / 60
    in_hours = in_mins / 60
    in_days = in_hours / 24
    in_days / 365.25
  end
end
