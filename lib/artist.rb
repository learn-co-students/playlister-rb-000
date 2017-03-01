class Artist
    @@all = []
    
    attr_accessor :songs, :name

    def self.reset_artists
        @@all = []
    end

    def self.all
        @@all
    end

    def self.count
        @@all.count
    end

    def initialize
        @songs = []
        @@all << self
    end

    def add_song(song)
        self.songs << song
        song.artist = self
    end

    def genres
        songs.collect do |song|
            song.genre
        end
    end
end