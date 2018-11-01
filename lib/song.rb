require "pry"
require_relative "./artist"

class Song

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_name)
    @artist = artist_name
  end

  def self.new_by_filename(file)
    filename_elements = file.split(" - ")
    song_name = filename_elements[1]
    artist_name = filename_elements[0]
    new_song = self.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist.save
    new_song.artist.add_song(new_song)
    new_song
  end

end

Song.new_by_filename("Action Bronson - Larry Csonka - indie.mp3")
