class Song
  attr_accessor:name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
   
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    # returns hash keys = genre names, value = number of songs in that genre
    # create a histogram
    # iterate over @@genres
    # populate a hash with the key/value pairs
    # see if key already exists with specific genre
    # if true, increment the value of that key by one
    # if false, create a new key/value pair
    
    @@genres.inject(Hash.new(0)) do |key, value| 
      key[value] += 1; key
    end
  end
  
  def self.artist_count
     @@artists.inject(Hash.new(0)) do |key, value| 
      key[value] += 1; key
    end
  end
  
end