# code song here
class Song

  attr_accessor :name, :artist, :genre
  def initialize
    @name = name
    @genre = genre
    @artist = artist
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

end
