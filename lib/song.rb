require 'pry'


class Song

  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << @genre
    @@count += 1
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
    genre_count = {}
    @@genres.each do |genre|
        if genre_count.include?(genre)
          counter = genre_count[genre]
          counter +=1
          genre_count[genre] = counter
        else
          genre_count[genre] = 1
        end
      end
      genre_count
    end

    def self.artist_count
      song_count = {}
      @@artists.map do |artist|
        if song_count.include?(artist)
          counter = song_count[artist]
          counter += 1
          song_count[artist] = counter
        else
          song_count[artist] = 1
        end
      end
      song_count
    end


end
