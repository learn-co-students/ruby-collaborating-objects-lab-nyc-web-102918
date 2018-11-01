require "pry"
require_relative "./song"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def save
    # @@all << self
  end


  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
  end

  def self.find_by_name(artist_name)
    self.all.find {|artist| artist.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    artist = self.find_by_name(artist_name)
    artist == nil ? self.create_by_name(artist_name) : artist
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end





end
