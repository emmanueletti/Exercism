# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.

class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    roll_over_minute
    roll_over_hour
    # p "FULL TIME: #{hour}:#{minute}"
    time = Time.new(Time.now.year, Time.now.month, Time.now.mday, hour, minute)
    # puts time.strftime("%H:%M")
    time.strftime("%H:%M")
  end

  def +(other)
    return if other.class != Clock

    @hour += other.hour
    @minute += other.minute
    self
  end

  def -(other)
    return if other.class != Clock

    @hour -= other.hour
    @minute -= other.minute
    self
  end

  def ==(other)
    return if other.class != Clock
    to_s == other.to_s
    # hour == other.hour && minute == other.minute
  end

  private

  def roll_over_minute
    wind_minutes_backwards

    while minute >= 60
      self.minute -= 60
      self.hour += 1
    end
  end

  def roll_over_hour
    wind_hours_backwards

    while hour > 24
      self.hour = hour % 24
    end
  end

  def wind_minutes_backwards
    while minute.negative?
      self.minute += 60
      self.hour -= 1
    end
  end

  def wind_hours_backwards
    while hour.negative?
      self.hour += 24
    end
  end

  attr_writer(:hour, :minute)
end
