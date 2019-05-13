class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
  end

  def self.count
    @@count
  end
end