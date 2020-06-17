require_relative './song'
require_relative './mp3_importer'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(given_song)
    self.songs << given_song
  end

  def self.all
    @@all
  end


  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)

    name_array = @@all.map do |element|
      element.name
    end
    if name_array.include?(name)
      @@all.find do |element|
        element.name == name
      end
    else
      new_artist = self.new(name)
      new_artist
    end
  end

  def print_songs

    self.songs.each do |element|
      puts element.name
    end

  end



  end
