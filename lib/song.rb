require 'pry'

# keeps track of how many songs it creates
# shows all artists of existing songs
# shows all genres of existing songs
# keeps track of number of songs in each genre it creates
# shows us the number of songs each artist is responsible for





# @@count <-- class variable, (keeps track of num of new_songs created from Song) = 0
# initialize method uses @@count and increments the value by +1
# .count => total num of songs created
# .genres => [] of all genres of existing songs - contains ONLY unique genres, no dups
  # needs a class variable: @@genres = []
  # add genres to [] - when?
  # initialize method should add genre of the song being created to @@genres array. ALL genres should be added to the array. control for dups when writing .genres class method, not the @@genres []. we want to know how many songs of each genre have been created.
# .artists => [] of all artists of existing songs. should only contain unique artists, no dups.
  # needs class var @@artists = []
  # add artists to [] when?
  # initialize method should add ALL artists to the @@artists []
  # control for dups when writing .artists, not when the artists are added to the original @@artists []
# .genre_count => {k=genre_names, v= num_songs_in_genre}

class Song
  
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  # binding.pry
  end

  def self.artists
    @@artists.uniq! # <-- had to find .uniq! method to remove dups
  # binding.pry
  end

  def self.genres
    @@genres.uniq!
    #binding.pry
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre_name| # <-- could not pass with @@genres.each_with_object method
      if genre_count[genre_name]
        genre_count[genre_name] +=1
        #binding.pry
      else
        genre_count[genre_name] = 1
    
      end
    end
    genre_count 
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist| # <-- iterate over class var=[Jay-Z, Jay-Z, Brittany Spears]; |artist| = Jay-Z
      if artist_count[artist]  # <-- Jay-Z => 1, but we need => 2
        #binding.pry
        artist_count[artist] +=1 # <-- increment to get expected result
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end