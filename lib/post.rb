class Post 
  
  attr_accessor :title, :author
  
  
  
  def initialize(title)
    @title = title
    @@all  = []
  end 
  
  def self.all 
    @@all
  end 
  
  
  def add_post(post)
    @posts << post
    posts.author = self
  end 
  
  def author_name (name = nil)
    self.author.name 
  end 
  
end 