describe "Song" do

  it "can initialize a song" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song = Song.new
    song.name = "Stop, or I'll Break your Heart!"
    expect(song.name).to eq("Stop, or I'll Break your Heart!")
  end

  it "can have a genre" do
    song = Song.new
    song.genre = Genre.new
    expect(song.genre.count).to eq(1)
  end

  it "has an artist" do
    song = Song.new
    song.artist = Artist.new
    expect(song.artist.count).to eq(1)
  end
end
