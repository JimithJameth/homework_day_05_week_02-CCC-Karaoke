require "minitest/autorun"
require "minitest/rg"
require "pry"
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class TestRooms < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Jamie")
    @guest_2 = Guest.new("Sam")
    @guests = [@guest_1 ,@guest_2]
    @room_1 = Room.new("Pink")
    @song_1 = Song.new("David Bowie","Ziggystardust")
    @song_2 = Song.new("Guns and roses", "Sweet child of mine")
  end

  def test_check_in_room
    @room_1.check_in(@guest_1)
    assert_equal(1, @room_1.guest_count())
  end

  def test_check_in_multiple_guests
    @room_1.check_in_multiple_guests(@guests)
    assert_equal(2, @room_1.guest_count())
  end


  def test_check_out_room
    @room_1.check_in(@guest_1)
    @room_1.check_out(@guest_1)
    assert_equal(0, @room_1.guest_count())
  end
  
  def test_add_song
    @room_1.add_song(@song_1)
    @room_1.add_song(@song_2)
    assert_equal(2, @room_1.song_count())
  end

end

