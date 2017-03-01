# code genre here
class Genre
    @@genres = []
    
    attr_accessor :songs, :name

    def initialize
        @songs = []
        @@genres << self
    end

    def artists
        @songs.collect do |song|
            song.artist
        end.uniq
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