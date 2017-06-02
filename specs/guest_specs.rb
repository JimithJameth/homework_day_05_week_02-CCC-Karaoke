require "minitest/autorun"
require "minitest/rg"
require_relative("../song")
require_relative("../guest")

class TestGuests < MiniTest::Test

  def setup

  @name_1 = Name.new("Jamie")  

  end

  def test_name_of_guest
  assert_equal("Jamie", @name_1.name())
  end
end