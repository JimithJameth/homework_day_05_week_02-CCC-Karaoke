require "minitest/autorun"
require "minitest/rg"
require_relative("../song")
require_relative("../guest")

class TestGuests < MiniTest::Test

  def setup

  @guest_1 = Name.new("Jamie")  

  end

  def test_name_of_guest
  assert_equal("Jamie", @guest_1.name())
  end
end