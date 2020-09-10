require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    # instance method inside the class of song
    # instace methods can be called on instances
    def initialize(name, artist, genre)
        
        # set the local variables for this 
        @name = name
        @artist = artist
        @genre = genre

        # increment the count for each initialization
        @@count += 1

        # add to the class variable
        @@artists << artist

        #
        @@genres << genre
    end

    # in a class method, self is the class itself
    def self.count
        @@count
    end

    # return a uniq set of artists
    def self.artists
        a = @@artists.uniq
        a
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        new_hash = {}
        @@genres.each do |item|
            # add an entry for the genre
            if new_hash.include?(item)

                #get the value for the item
                count = new_hash[item]

                # increment the value
                count += 1

                # re-assign the value
                new_hash[item] = count
            else
                # insert the hash value and a count of 1
                new_hash[item] = 1
            end
        end
        new_hash
    end

    def self.artist_count
        new_hash = {}
        @@artists.each do |item|
            # add an entry for the genre
            if new_hash.include?(item)

                #get the value for the item
                count = new_hash[item]

                # increment the value
                count += 1

                # re-assign the value
                new_hash[item] = count
            else
                # insert the hash value and a count of 1
                new_hash[item] = 1
            end
        end
        new_hash
    end


end
