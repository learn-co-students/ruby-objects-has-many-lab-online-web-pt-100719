class Author
    attr_accessor :name
    @@all_authors = []


    def initialize(name)
        @name = name
        @@all_authors << self
    end

    def self.all_authors
        @@all_authors
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def posts
        Post.all.select {|post| post.author == self}
    end
    def self.post_count
        all_posts = self.all_authors.collect {|author| author.posts}
        all_posts.flatten.count
    end
end