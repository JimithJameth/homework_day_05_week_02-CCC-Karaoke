require "minitest/autorun"
require "minitest/rg"
require_relative("../song")

class TestSongs < MiniTest::Test

  def setup
  
 @song_1 = Song.new("David Bowie","Ziggystardust")

 @song_2 = Song.new("ZZtop" ,"Sharp dressed man")

 @song_3 = Song.new("Kiss" , "Love gun")
  
 @song_4 = Song.new("Peter Gabriel" , "Sledgehammer")

 @song_5 = Song.new("Adam Ant","Stand and deliver")
  end

@songs = [@songs_1,@songs_2,@songs_3,@songs_4,@songs_5]

def test_song_artist 
  assert_equal("David Bowie", @song_1.artist)

end

def test_song_title
  assert_equal("Ziggystardust",@song_1.title)
end

end