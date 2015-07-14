# code song here

class Song

  attr_reader
  attr_accessor :song, :genre

  FLICK = []

  def initialize(song = nil)
    @song = song
    FLICK << self
  end

  def self.reset_songs
    FLICK.clear
  end

end