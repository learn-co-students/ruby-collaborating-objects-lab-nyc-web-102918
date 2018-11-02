class Song

  attr_accessor
  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]
    new_song = Song.new(song_name)
    new_song.artist = Artist.new(artist_name)
    new_song.artist.add_song(new_song)
    new_song.artist.save
    new_song
  end
end
