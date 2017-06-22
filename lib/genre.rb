class Genre
	attr_accessor :name, :artists, :songs
	@@genres = []
	def initialize
		@@genres << self
		@songs = []
		@artists = []
	end

	def artists
		self.songs.each do |s|
			@artists << s.artist
		end
		@artists | @artists
	end

	def self.reset_genres
		@@genres = []
	end

	def self.all
		@@genres
	end

	def self.count
		@@genres.uniq.count
	end

end