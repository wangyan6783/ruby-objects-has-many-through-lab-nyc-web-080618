class Genre
  attr_reader :name, :songs

  @@songs = []

  def initialize(name)
    @name = name
    @@songs << self
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
