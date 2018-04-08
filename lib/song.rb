require 'pry'
class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre, :hash

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @hash = {}
    end

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end
    
    def self.genre_count
        
        @@genres.each_with_object({}) do |key_genre, hash| 
           
            if hash[key_genre] 
                hash[key_genre] +=1
            else 
                hash[key_genre] = 1 
            end
         #how does the hash knows that it has to account for the number of genres?
         # hash alone returns {"rap" => 1}
         # key_genre returns "rap"
         # hash[key_genre] returns 1 
        end
        #m[e] = e; e }       
    end

    
    def self.artist_count
        @@artists.each_with_object({}) do |key_genre, hash|
            if hash[key_genre]
                hash[key_genre] +=1
            else
                hash[key_genre] = 1
            end
        end
        
    end




end
