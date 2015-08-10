# code artist here
require 'pry'

class Artist

  attr_accessor :name, :songs, :genres
  attr_reader  

  ALL_ARTIST = []

  def initialize
     @songs = []
     @genres = []
     ALL_ARTIST << self
  end

  def add_song(song)
    @songs << song
    #if a song has genre add to @genres and add artist to genre instance
    if song.genre != nil 
      @genres << song.genre
      if song.genre.artists.include?(self) == false
        song.genre.artists << self
      end
    end
  end

  def self.all
    ALL_ARTIST
  end

  def self.count
    ALL_ARTIST.count
  end

  def self.reset_artists
    ALL_ARTIST.clear
  end



end
