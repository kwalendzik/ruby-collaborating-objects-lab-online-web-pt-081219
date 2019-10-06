class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
   @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")
    song
    
    new_array = filename.split(" - ")
        song = Song.new(new_array[1])
        song.artist_name = new_array[0]
        song
      end
  end

   def artist_name=(name)
     if (self.artist.nil?)
       self.artist = Artist.new(name)
     else
       self.artist.name = name
     end
   end
     

  
  
end