class Song
  attr_accessor :name, :artist
  
  @@all_songs = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
   @@all_songs << self
  end
  
  def self.all
    @@all_songs
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")
    song
  end
  


  
  
end