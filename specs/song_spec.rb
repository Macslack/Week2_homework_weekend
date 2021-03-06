require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Bad moon rising")
  end

  def test_song_has_name
    assert_equal("Bad moon rising", @song.name())
  end

  def test_song_make_noise
    assert_equal("Shoop de whoop", @song.make_noise)
  end

end
