class Room

  attr_reader(:name, :guests)

  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def guest_count()
    return @guests.count()
  end 

  def song_count()
    return @songs.count()
  end

  def check_in(guest)
    @guests << guest
  end

  def check_in_multiple_guests(guests)
    for guest in guests
      check_in(guest)
    end
  end

def find_person(guest_to_find)
  found_guest = nil
  for guest in @guests
    if guest == guest_to_find
      found_guest = guest
    end
  end
  return found_guest
end

  def check_out(guest)
    person = find_person(guest)
    if person != nil
      @guests.delete(person) 
    end   
  end

def add_song(song)
  @songs.push song
end
end


