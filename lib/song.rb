class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  
  def initialize()
  end

  def self.count
    @@count
  end
end
