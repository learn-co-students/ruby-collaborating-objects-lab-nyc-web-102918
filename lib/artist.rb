class Artist

  attr_accessor :songs
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if !self.all.find { |artist| artist.name == name }
      Artist.new(name)
    else
      self.all.find { |artist| artist.name == name }
    end
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
