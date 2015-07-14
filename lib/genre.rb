# code genre here

class Genre

  attr_accessor :name, :song, :artist, :songs

THESE = []

  def initialize(name = nil)
    @name = name
    THESE << self
  end

  def songs
    Song::FLICK
  end

  def artists
    Artist::CREATED
  end


  def self.all
    THESE
  end

  def self.reset_genres
    THESE.clear
  end

  def self.count
    THESE.count
  end

end