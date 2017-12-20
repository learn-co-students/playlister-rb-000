# code genre here
class Genre
  attr_accessor :songs, :name, :artists
  @@all = []
  def initialize
    @songs = []
    @artists = []
    @name = name
    @@all << self
  end

  def artists
    @songs.each do |song|
      unless @artists.include?(song.artist)
        @artists << song.artist
      end
    end
    @artists
  end 

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_genres
    @@all.clear
  end

end
