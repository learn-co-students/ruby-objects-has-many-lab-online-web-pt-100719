class Song 
  attr_accessor :name, :artist 

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end


jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
ninety_nine_problems = Song.new("99 Problems", rap)
jay_z.add_song(ninety_nine_problems)
another_crappy_song = Song.new("Crappy Song", rap)
jay_z.add_song(another_crappy_song)
jay_z.songs