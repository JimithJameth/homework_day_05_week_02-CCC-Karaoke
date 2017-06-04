require "minitest/autorun"
require "minitest/rg"
require_relative("../song")

 class TestSongs < MiniTest::Test

 def setup
   @song_1 = Song.new("David Bowie","Ziggystardust")
 end

 def test_song_artist 
  assert_equal("David Bowie", @song_1.artist)
 end

 def test_song_title
  assert_equal("Ziggystardust",@song_1.title)
 end

 end