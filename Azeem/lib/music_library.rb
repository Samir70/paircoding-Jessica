class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) 
    @library << track
  end

  def all
    return @library
  end

  def search_by_title(keyword) 
    @library.select { |el| el.title.upcase.include?(keyword.upcase)}
  end
end
