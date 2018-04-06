require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Callum")
  end

  def test_guest_has_name
    assert_equal("Callum", @guest.name())
  end
end
