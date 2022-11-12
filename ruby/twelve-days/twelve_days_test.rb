require "minitest/autorun"
require_relative "twelve_days"

class TwelveDaysTest < Minitest::Test
  def song_file
    File.expand_path("song.txt", __dir__)
  end

  def full_song
    IO.read(song_file)
  end

  def specific_song_line(line)
    File.readlines(song_file)[line]
  end

  def test_the_whole_song
    # skip
    expected = full_song
    assert_equal expected, TwelveDays.song
  end
end
