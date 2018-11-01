class Artist
	@@all = []

	def self.find_or_create_by_name(name)
		artist = @@all.find{|ist| ist.name == name }
		if artist.nil?
			artist = self.new(name)

			artist.save
		end

		artist
	end

	def self.all
		@@all
	end

	attr_accessor :name
	attr_reader :songs
	
	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist = self

		@songs << song
	end

	def print_songs
		@songs.each{|song| puts song.name }
	end

	def save
		@@all << self
	end
end
