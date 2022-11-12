# Write your code for the 'Twelve Days' exercise in this file. Make the tests in
# `twelve_days_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/twelve-days` directory.

class TwelveDays
  GIFTS = [
    nil,
    "a Partridge in a Pear Tree",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming"
  ]

  ORDINAL_NAMES = [
    nil,
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "seventh",
    "eighth",
    "ninth",
    "tenth",
    "eleventh",
    "twelfth"
  ]

  STARTER = "On the BLANK day of Christmas my true love gave to me: "

  def self.song
    result = ""
    (1..12).each do |current_day|
      # create starter verse
      result += STARTER.gsub(/BLANK/, ORDINAL_NAMES[current_day]) + GIFTS[current_day]
      # generate past gifts
      result += list_gifts_prior_to(current_day)
      # punctuate
      result += ".\n"
      # add new line
      if current_day != 12
        result += "\n"
      end
    end
    result
  end

  def self.list_gifts_prior_to(current_day)
    result = ""
    (current_day - 1).downto(1).each do |day|
      result += if day == 1
        ", and #{GIFTS[day]}"
      else
        ", #{GIFTS[day]}"
      end
    end
    result
  end
end
