class Genre

	attr_reader :artists
	attr_accessor :name, :songs

	GENRES = []

	def initialize
		GENRES<<self
		@artists = []
		@songs = []
	end

	def songs=(song)
		@songs<<song
		@artists<<song.artist
	end

	def artists=(artist)
		@artists<<artist
	end

	def self.reset_genres
		GENRES.clear
	end

	def self.all
		GENRES
	end

	def self.count
		GENRES.count
	end




end