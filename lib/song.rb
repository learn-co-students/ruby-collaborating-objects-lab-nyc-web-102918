require 'pry'
require_relative './artist'
require_relative './mp3_importer'

class Song
 attr_accessor :artist
  attr_reader :artist, :name

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def self.new_by_filename(file_name)

    newAr = file_name.split(" - ")
    song = self.new(newAr[1])
    artist_name = Artist.find_or_create_by_name(newAr[0])

    song.artist = artist_name
    artist_name.songs << song
    song
  end


end
