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
    @@all << self 
  end 
  
#binding.pry
end 