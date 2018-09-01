class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@genres << genre if @@genres.include?(genre) == nil
  end

  def self.count
    @@count
  end
end
