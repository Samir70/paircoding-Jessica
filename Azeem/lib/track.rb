class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
  end

  def title
    return @title
    # Returns the title as a string
  end

  def format
    return @title + " by " + @artist
    # Returns a string of the form "TITLE by ARTIST"
  end
  attr_reader :artist
end
