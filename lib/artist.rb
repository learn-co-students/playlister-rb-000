# code artist here
class Artist
  @@all = []
  def self.all
    @@all
  end
  def self.count
    @@all.size
  end	
  def self.reset_artists
    @@all.clear
  end

  attr_accessor :name, :songs, :genres
  def initialize
    @songs = []
	@genres = []
	@@all << self
  end	
  def add_song(song)
    @songs << song unless @songs.include?(song)
    @genres << song.genre unless @genres.include?(song.genre)
	song.genre.artists << self unless ( song.genre == nil || song.genre.artists.include?(self) )
  end
end