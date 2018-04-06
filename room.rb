class Room
attr_reader :name, :guests, :song
def initialize(name, guests, song)
  @name = name
  @guests = []
  @song = song
end
def add_guest(guest)
  @guests.push(guest)
end

end
