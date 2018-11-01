require "pry"

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    Artist.all << self
  end

  # def self.find_or_create_by_name(name)
  #   self.all.find do |instance|
  #     if instance.name == name
  #       instance
  #     else
  #       new_artist = self.new(name)
  #       new_artist
  #     end
  #   end
  # end

  # def self.find_or_create_by_name(name)
  #   if Artist.all.include?(name)
  #     self.all.find {|instance| instance.name == name}
  #   else
  #     new_artist = Artist.new(name)
  #     new_artist
  #   end
  # end

  def self.find_or_create_by_name(name)
    if !Artist.all.find {|instance| instance.name == name}
      new_artist = Artist.new(name)
      new_artist
    else
      Artist.all.find {|instance| instance.name == name}
    end
  end



  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  # binding.pry

end

# puts 0
