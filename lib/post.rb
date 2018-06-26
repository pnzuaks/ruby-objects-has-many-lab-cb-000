class Post
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author.name == ""
      return nil
    else self.author.name
    end
  end
end