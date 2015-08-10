describe "Song" do

  let (:song) { Song.new }
  let (:artist) { Artist.new }
  let (:genre) { Genre.new }

  it "can initialize a song" do
     # implement this spec
     expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
     # implement this spec
    song.name = "My $ong"
    expect(song.name).to eq("My $ong")
  end

  it "can have a genre" do
     # implement this spec
    song.genre = genre
    expect(song.genre).to eq(genre)
  end

  it "has an artist" do
     # implement this spec
    song.artist = artist
    expect(song.artist).to eq(artist)
  end
end

