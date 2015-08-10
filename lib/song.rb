# code song here
require 'pry'

class Song

  attr_accessor :name, :artist
  attr_reader 
  
  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

  def genre
    @genre
  end

end

