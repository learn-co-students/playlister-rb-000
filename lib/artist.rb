# code artist here
class Artist
  attr_accessor :songs, :name, :genres

  @@all = []

  def initialize
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all.uniq
  end

  def self.count
    @@all.size
  end

  def self.reset_artists
    @@all.clear
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    @songs.each do |song|
      @genres << song.genre
    end
    @genres 
  end
end
