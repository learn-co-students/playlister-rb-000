# code song here
class Song
  attr_accessor :name, :artist
  attr_reader :genre
  def genre=(genre)
    @genre = genre
	genre.songs << self unless genre.songs.include?(self)
  end
end