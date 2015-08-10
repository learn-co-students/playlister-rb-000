# code genre here
require 'pry'

class Genre

  attr_accessor :name, :songs, :artists 
  ALL_GENRES = []

  def initialize
    @songs = []
    @artists = []
    ALL_GENRES << self
  end 

  def self.all
    ALL_GENRES
  end

  def self.count
    ALL_GENRES.count
  end

  def self.reset_genres
    ALL_GENRES.clear
  end

end