class Author
  
  attr_accessor :name, :post
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |post|
      post.author == self
    end
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(post_title)
    title = Post.new(post_title)
    add_post(title)
  end
  
  def self.post_count
    Post.all.count
  end
  
end