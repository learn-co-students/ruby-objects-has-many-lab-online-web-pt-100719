class Post 
  
  attr_accessor :title, :author
  

  
  def initialize(title)
    @title = title
    @posts = []
  end 
  
  def add_post(post)
    @posts << post
    posts.author = self
  end 
  
end 