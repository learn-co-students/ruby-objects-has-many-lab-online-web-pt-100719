require 'pry'
class Song 
  

  @@all = []
  
  attr_accessor :artist, :name 
  
  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all
     @@all 
  end 
  
  def name
    @name 
  end 
  
  def artist_name(name = nil)
    self.artist.name 
  end 

end 