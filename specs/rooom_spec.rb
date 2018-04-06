require("minitest/autorun")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Bad moon rising")
    @guest1 = Guest.new("Bob")
    @guest2 = Guest.new("Bill")
    @guest3 = Guest.new("Rob")
    guests = [@guest1, @guest2, @guest3]
    @room = Room.new("Party", guests, @song1 )
  end
  def test_room_has_name
    assert_equal("Party", @room.name)
  end
  def test_room_starts_empty
    assert_equal([], @room.guests)
  end
  def test_room_can_fill
    @guest1 = Guest.new("Bob")
    @guest2 = Guest.new("Bill")
    @guest3 = Guest.new("Rob")
    guests = [@guest1, @guest2, @guest3]
    assert_equal(3 , guests.length)
  end
  def test_add_guest

    @room.add_guest(@guest1)
    assert_equal(1 , @room.guests.length)
  end


end
