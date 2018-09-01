class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@artist << artist if @@artists.include?(artist) == nil
    if @@genres.include?(genre) == nil
      @@genres << genre
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end
end
