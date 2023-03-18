class BirdCount
  @last_weeks_counts = [0, 2, 5, 3, 7, 8, 4]
  @current_weeks_counts = nil

  def self.last_week
    @last_weeks_counts
  end

  def initialize(birds_per_day)
    @current_weeks_counts = birds_per_day
  end

  def yesterday
    second_to_last_index = -2
    current_weeks_counts[second_to_last_index]
  end

  def total
    current_weeks_counts.sum
  end

  def busy_days
    current_weeks_counts.count {|num| num >= 5}
  end

  def day_without_birds?
    current_weeks_counts.any? {|num| num == 0}
  end

  private
  attr_reader :last_weeks_counts, :current_weeks_counts
end
