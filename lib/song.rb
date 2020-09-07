require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    #Initiatization 
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        #Setting instance variables------------------------------
        @name = name
        @artist = artist
        @genre = genre

        #Setting counters-----------------------------------------
        @@count += 1 

        @@artists.push(@artist)

        @@genres.push(@genre)

    end

    #Setting Class Methods----------------------------------------
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
        counter = Hash.new(0)
        @@genres.each {|genre| counter[genre] += 1}
        counter
    end

    def self.artist_count
        counter = Hash.new(0)
        @@artists.each {|artist| counter[artist] += 1}
        counter
    end

end