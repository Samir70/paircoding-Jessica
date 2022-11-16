RSpec.describe Track do
    it "constructs with an empty track list" do
      track = Track.new("Money","Pink Floyd")
      expect(track.title).to eq "Money"
      expect(track.artist).to eq "Pink Floyd"
  
    end
    it "Formats title and artist" do
        track = Track.new("Money","Pink Floyd")
        expect(track.format).to eq "Money by Pink Floyd"
    
    
    
    end
  
    # ...
  end
  