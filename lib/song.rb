class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name,artist,genre)
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
        @@genres.group_by(&:itself).each {|type,num| @@genre_count[type] = num.count}
        return @@genre_count 
    end

    def self.artist_count
        @@artists.group_by(&:itself).each {|type,num| @@artist_count[type] = num.count}
        return @@artist_count
    end
end