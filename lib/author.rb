class Author

  attr_accessor :name
  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def self.post_count
    @@posts.count
  end
  
  def add_post(pt)
    @posts << pt
    @@posts << pt
    pt.author = self
  end
  
  def posts
    @posts
  end
  
  def add_post_by_name(post_name)
    post = Post.new(post_name)
    @posts << post
    @@posts << post
    post.author = self
  end

  
end
