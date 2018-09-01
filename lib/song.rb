class Song
  @@count = 0
  @@artists = []
  @@genres = []
  ARTISTS = {}
  GENRES = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    if @@artists.include?(artist) == nil
      @@artists << artist
    else

    end
    if @@genres.include?(genre) == nil
      @@genres << genre
      GENRES[genre] = 1
    else
      GENRES[genre] += 1
    end
  end

  def self.count
    @@count
  end

  def self.genre_count
    GENRES
  end
end
