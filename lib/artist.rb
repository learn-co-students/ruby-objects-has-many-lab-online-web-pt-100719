  require 'pry'
  class Artist
  attr_accessor :name
  
  @@songcounter = 0
  
  def initialize(name)
  @name=name
  
  end 
 

 def songs 
   @song_array= []
Song.all.each do |song| 
  if song.artist == self
      @song_array << song
  end
end
return @song_array
 end

  def add_song(song)
    song.artist = self
    @@songcounter +=1 
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @@songcounter +=1
  end

 
  def self.song_count
    Song.all.length
  end

  #binding.pry 
  
  
end





