class Artist

  @@artists = [] 

  attr_accessor :songs, :name

  def initialize
    @songs = []
    @@artists << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect{|song| song.genre}
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  def self.count
    @@artists.count
  end

end