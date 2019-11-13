require 'pry'
class Artist 
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name 
  end 
  
   def songs
    Song.all.select do |song| 
      song.artist == self 
    end
  end
  
  def add_song(song)
    song.artist = self
  end 
  
  def add_song_by_name(name)
    name = Song.new(name)
    add_song(name)
  end 
  
  def self.song_count
    Song.all.count
    
  end

  #binding.pry
end 
