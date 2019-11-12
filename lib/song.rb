require 'pry'
class Song 
  
  @@all = []
  
  attr_accessor :title, :artist, :name 
  
  def initialize(title)
    @title = title
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
  
  
#binding.pry
end 