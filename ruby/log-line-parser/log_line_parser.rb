class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    split_line_at_seperator.last.strip
  end

  def log_level
    split_line_at_seperator.first.gsub(/\[/, "").gsub(/\]/, "").downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end

  private

  attr_reader :line

  def split_line_at_seperator
    line.split(": ")
  end
end
