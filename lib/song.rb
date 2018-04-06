class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}

    for i in 0..@@genres.length-1 do
      if genre_count.keys.include?(@@genres[i]) == true
        next
      else
        count = 1
        for j in i+1..@@genres.length-1 do
          count += 1 if @@genres[i] == @@genres[j]
        end
        genre_count[@@genres[i]] = count
      end
    end

    genre_count
  end

  def self.artist_count
    artist_count = {}

    for i in 0..@@artists.length-1 do
      if artist_count.keys.include?(@@artists[i]) == true
        next
      else
        count = 1
        for j in i+1..@@artists.length-1 do
          count += 1 if @@artists[i] == @@artists[j]
        end
        artist_count[@@artists[i]] = count
      end
    end

    artist_count
  end
end
