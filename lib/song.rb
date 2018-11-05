
class Song

@@count = 0
@@artists = []
@@genres = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
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
    genres_hash = @@genres.reduce(Hash.new(0)) { |g, num| g[num] +=1; g }
  end

  def self.artist_count
    artists_hash = @@artists.reduce(Hash.new(0)) { |a, num| a[num] +=1; a }
  end
end
