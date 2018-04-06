require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Bad moon rising")
    @guest1 = Guest.new("Bob")
    @guest2 = Guest.new("Bill")
    @guest3 = Guest.new("Rob")
    # guests = [@guest1, @guest2, @guest3]
    # stero = [@song1]
    @room = Room.new("Party")
  end
  def test_room_has_name
    assert_equal("Party", @room.name)
  end
  def test_room_starts_empty
    assert_equal([], @room.guests)
  end
  def test_can_add_guest
    @room.add_guest(@guest1)
    @room.add_guest(@guest3)
    @room.add_guest(@guest2)
    assert_equal(3 , @room.guests.length)
  end

  def test_remove_guest
    @room.add_guest(@guest1)
    @room.remove_guest(@guest1)
    assert_equal(0 ,@room.guests.length)
  end
  def test_stero_starts_empty
    assert_equal(0, @room.stero.count)
  end
  def test_can_add_song
    @room.add_song(@song1)
    assert_equal(1, @room.stero.length)
  end
  def test_remove_song
    @room.add_song(@song1)
    @room.remove_song(@song1)
    assert_equal(0, @room.stero.length)
  end
  def test_is_full_not_full__returns_true
    assert_equal(true, @room.is_full)
  end
  def test_is_full_full__returns_false
    @room.add_guest(@guest1)
    @room.add_guest(@guest3)
    @room.add_guest(@guest2)
    @room.add_guest(@guest2)
    @room.add_guest(@guest2)
    assert_equal(false, @room.is_full)
  end

end
