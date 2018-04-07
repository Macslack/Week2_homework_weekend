require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Callum",10.0)
  end

  def test_guest_has_name
    assert_equal("Callum", @guest.name())
  end
  def test_guest_has_wallet
    assert_equal(10.0, @guest.wallet())
  end
end
