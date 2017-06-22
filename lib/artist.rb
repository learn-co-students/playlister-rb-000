class Artist
	attr_accessor :name, :songs

	@@artists = []
	def initialize
		@name
		@songs = []
		@genres = []
		@@artists.push(self) unless @@artists.include?(self)
	end

	def add_song(song)
		self.songs << song
		song.artist = self
	end

	def genres
		self.songs.each do |s|
			@genres << s.genre
		end
		@genres
	end

	def self.reset_artists
		@@artists = []
	end

	def self.all
		@@artists
	end

	def self.count
		@@artists.uniq.count
	end

end