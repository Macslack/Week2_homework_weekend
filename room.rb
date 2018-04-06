class Room
  attr_reader :name, :guests, :stero
  def initialize(name)
    @name = name
    @guests = []
    @stero = []

  end
  def add_guest(guest)
    @guests.push(guest)
  end
  def remove_guest(guest)
    @guests.delete(guest)
  end
  def add_song(song)
    @song.push(song)
  end
  
end
