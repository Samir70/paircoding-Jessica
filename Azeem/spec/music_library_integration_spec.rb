require "music_library"
require "track"
RSpec.describe "Music Library Integration" do
  it "gets all tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    library.add(track_1)
    library.add(track_2)
    expect(library.search_by_title("Carte")).to eq [track_1]
  end
  it "adds a track" do
    library = MusicLibrary.new
    track_1 = Track.new("Money", "Pink Floyd")
    track_2 = Track.new("Time", "Hans Zimmer")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end
  it "searches by title and if not found return empty list" do
    library = MusicLibrary.new
    track_1 = Track.new("Money", "Pink Floyd")
    track_2 = Track.new("Time", "Hans Zimmer")
    track_3= Track.new("One", "U2")
    library.add(track_1)
    library.add(track_2)
    library.add(track_3)
    expect(library.search_by_title("zzz")).to eq []
  end
end
 