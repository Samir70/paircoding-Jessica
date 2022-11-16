RSpec.describe MusicLibrary do
  it "constructs with an empty track list" do
    library = MusicLibrary.new
    expect(library.all).to eq []
  end

  it "adds a track" do
    library = MusicLibrary.new
    track_1 = Track.new("Money", "Pink Floyd")
    track_2 = Track.new("Time", "Hans Zimmer")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
   end

it "searches by title" do
    library = MusicLibrary.new
    track_1 = Track.new("Money", "Pink Floyd")
    track_2 = Track.new("Time", "Hans Zimmer")
    library.add(track_1)
    library.add(track_2)
    expect(library.search_by_title("one")).to eq [track_1]
  end

it "searches by title is not confused by capitals" do
    library = MusicLibrary.new
    track_1 = Track.new("Money", "Pink Floyd")
    track_2 = Track.new("Time", "Hans Zimmer")
    track_3= Track.new("One", "U2")
    library.add(track_1)
    library.add(track_2)
    library.add(track_3)
    expect(library.search_by_title("one")).to eq [track_1, track_3]
  end
end
