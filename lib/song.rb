class Song
    attr_accessor :name, :artist, :genre

    @@count = 0 #count of # of songs created
    @@genres = [] #all genres, even duplicates
    @@artists = [] #all artists, even duplicates

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1 #incrimenting for the purpose of tracking
        @@genres << genre #shoveling all genres into @@genres
        @@artists << artist #shoveling all artists into @@artsits
    end

    def self.count #count is the NAME of the method
        @@count
    end

    def self.artists #returns array of unique artists
        @@artists.uniq
    end

    def self.genres #returns array of unique genres
        @@genres.uniq
    end

    def self.genre_count #return HASH in which keys: genre, values: # of songs within genre
        #iterate over @@genres array & populate hash w/ key/value pairs
            #check if key of particular genre exists
                #if exists? incriment value of key by 1
                #if !exist create new key/value pair
        genre_count_hash = Hash.new(0) #gave hash a default value of 0 so that I could increment it below
        @@genres.each do |genre|
            if @@genres.include? genre
                genre_count_hash[genre] += 1
            else
                genre_count_hash[genre] = 1
            end
        end
        genre_count_hash
    end

    def self.artist_count
        artist_count_hash = Hash.new(0)
        @@artists.each do |artist|
            if @@artists.include? artist
                artist_count_hash[artist] += 1
            else
                artist_count_hash[artist] = 1
            end
        end
        artist_count_hash
    end
end      

#Song class produces individual songs w/ a name, artist, genre
    #keep track of all the songs it creates w/ .count
    #show us all of the artists w/ .artists
        #should return an array of strings
    #show us all of the genres w/ .genres
        #should return an array of strings
    #keep track of all the # of songs of each genre it creats w/ .genre_count
        #should return a hash - key: string of genre, value: #
    #keep track of # of songs from each artist
        #should return a hash - key: string of artist, value: #
#Use class variables & methods