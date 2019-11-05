class Author
  attr_accessor :name, :genre
  
  @@posts = []
  
  def initialize(name)
    @name = name
  end
  
  def add_post(post)
    @@posts << post
  end
  
  def post_count
    @@posts
  end
end