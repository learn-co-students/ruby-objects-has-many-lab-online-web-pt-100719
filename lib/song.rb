require 'pry'
class Song 
  
  @@all = []
  
  attr_accessor :title, :artist, :name 
  
  def initialize(title)
    @title = title
  end 
  
  def self.all
    @@all
  end 
  
  def save
    @@all << @song
  end 
  
#binding.pry
end 