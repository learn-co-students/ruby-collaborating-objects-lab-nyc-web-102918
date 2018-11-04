class Song
  #name=
  #sets the song name

  # #artist=
  #   sets the artist object to belong to the song
  attr_accessor:name,:artist

  #initialize with #name
  #accepts a name for the song
  def initialize(name)
    @name=name
  end

  #   .new_by_filename
  #   creates a new instance of a song from the file that's passed
  #   associates new song instance with the artist from the filename
  def self.new_by_filename(file_name)
    song_name=file_name.split(" - ")[1]
    new_song=Song.new(song_name)
    artist_name=file_name.split(" - ")[0]
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(new_song)
  end

end


# create an artist class
# MJ=Artist.new("Michael Jackson")
# create a song class
# Song1=Song.new("Thriller",MJ)


# song_name="Let it be" - song_name is a string
# artist_name="The Beatles" - artist_name is a strging
# new_song=Song.new("Let it be")- new_song is a variable
