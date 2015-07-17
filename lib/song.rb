class Song

	attr_reader :genre, :artist
	attr_accessor :name

	SONGS = []

	def initialize
		SONGS<<self
		@genre = []
		@artist = []
	end

  def genre=(genre)
  	@genre<<genre.tap {|g| genre.songs<<self }
  end

  def artist=(artist)
  	@artist<<artist
  end

  def self.count
  	SONGS.length
  end

end