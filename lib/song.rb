require "Pry"

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    artist_name = filename.split(" - ")[0]
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    song.genre = filename.split(" - ")[2][0...-4]
    artist.songs << song
    song
  end
end
