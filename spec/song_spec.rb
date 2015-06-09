describe "Song" do

    let (:song) { Song.new }
  let (:artist) { Artist.new }
  let (:genre) { Genre.new }


  it "can initialize a song" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song.name = "Rock you"
    expect(song.name).to eq("Rock you")
  end

  it "can have a genre" do
    song.genre = genre
    expect(song.genre).to eq(genre)
  end

  it "has an artist" do
    song.artist = artist
    expect(song.artist).to eq(artist)
  end
end
