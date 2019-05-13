require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  @@genre_count = {}
  
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
  
  #keys = name of each genre
  #values = number of songs in genre
  
  def self.genre_count
    count = 0
      while count < @@genres.length
        if @@genre_count[@@genres[count]]
          @@genre_count[@@genres[count]] += 1
        else  
          @@genre_count[@@genres[count]] = 1
        end
        count += 1
      end
    return @@genre_count
  end
end



      #@@genres.each { |key, value| @@genre_count[key] = @@genre_count.count}