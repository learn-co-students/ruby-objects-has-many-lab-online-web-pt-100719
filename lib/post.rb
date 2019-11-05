class Post
  
  @@all = []
  attr_accessor :title, :author
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  end