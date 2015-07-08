# code genre here
class Genre
  @@all = []
  def self.reset_genres
    @@all.clear
  end	
  
  def self.all
    @@all
  end

  def self.count
    @@all.size
  end	
  
  attr_reader :songs, :artists
  attr_accessor :name
  def initialize 
    @songs = []
	@artists = []
	@@all << self
  end
end