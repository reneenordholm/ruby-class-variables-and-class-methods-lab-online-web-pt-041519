class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end
  
  def genre_count
    sorted_hash = {}
      @genres.each { |key, value| sorted_hash[key] = value.sort }
    return sorted_hash
  end
end