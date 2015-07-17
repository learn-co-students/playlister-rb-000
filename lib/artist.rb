require "pry"

class Artist

	attr_accessor :name, :songs, :genres

	ARTISTS = []

	def initialize
		ARTISTS<<self
		@songs = []
		@genres = []
	end

	def add_song(song)
		@songs<<song
		@genres<<song.genre.tap do |g|
			if g[0].class == Genre
			  g[0].artists<<self
			  g[0].artists.uniq!
		  end
		end
	end

	def self.reset_artists
		ARTISTS.clear
	end

	def self.all
		ARTISTS
	end

	def self.count
		ARTISTS.count
	end

end






