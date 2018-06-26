class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song()
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  def song_count
    @songs.count
  end
end