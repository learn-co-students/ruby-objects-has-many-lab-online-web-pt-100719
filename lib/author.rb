class Author 
  attr_accessor :name
  
  def initialize(name)
    @name =  name
    
  end
  
  
  def posts 
    post_array = []
    Post.all.each do |ind_post|
      if ind_post.author = self
        post_array << ind_post
      end
    end
    post_array
    
  end
  
  def add_post(post)
    post.author = self
  end
  
  
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  
  def self.post_count
    Post.all.length 
  end
  
  
end