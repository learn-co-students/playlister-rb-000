# code artist here
class Artist

  attr_accessor :name, :songs, :song, :genre

  CREATED = []

  def initialize(name = nil)
    @name = name
    @songs = []
    if !CREATED.include?(self)
      CREATED << self
    else
    end
  end

  def add_song(song)
    songs.push(song)
  end

  def genres
    Genre::THESE
  end

  def self.all
    CREATED
  end

  def self.reset_artists
    CREATED.clear
  end

  def self.count
    CREATED.count
  end

end