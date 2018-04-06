class Song
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def make_noise()
    "Shoop de whoop"
  end
end
