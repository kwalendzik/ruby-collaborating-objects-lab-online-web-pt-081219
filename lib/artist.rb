class Artist
  attr_accessor :name
  all_artists = []
  
  def initialize(name)
    @name = name
  end
  
  def all
    all_artists
  end
  
  def add_song
    song.artist = self
  end
  
  def songs
    Songs.all.select {|song| song.artist == self}
  end
  
  def find_or_create_by_name
    
end