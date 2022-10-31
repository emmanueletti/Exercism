class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    (speed * RATE_PER_HR) * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  attr_reader :speed

  def success_rate
    case speed
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    else
      1
    end
  end

  RATE_PER_HR = 221
end
