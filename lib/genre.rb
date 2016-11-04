class Genre

  @@genres =[]

  attr_accessor :songs, :name
  attr_reader :genre

  def initialize
    @songs = []
    @@genres << self
  end

  def artists
    @songs.map{|song| song.artist}.uniq
  end

  def self.reset_genres
    @@genres = []
  end

  def self.all
    @@genres
  end

  def self.count
    @@genres.count
  end

end