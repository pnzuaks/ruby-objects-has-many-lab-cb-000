class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def self.post_count
    @posts.count
  end
  
  def add_post(post)
    @posts << post
    post.artist = self
  end
  
  def posts
    @posts
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  
end
