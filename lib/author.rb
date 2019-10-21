class Aurthur
  attr_accessor :name

  @@posts_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts(song)
    self.posts << posts
    posts.aurthur = self
    @@posts_count +=1
  end

  def add_posts_by_name(name)
    posts = Post.new(name)
    self.posts << post
    post.aurthur = self
    @@post_count +=1
  end

  def posts
    @sposts 
  end

  def self.post_count
    @@post_count
  end
end