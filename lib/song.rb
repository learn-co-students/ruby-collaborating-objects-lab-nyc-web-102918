class Song
	@@all = []

	def self.new_by_filename(name)
		parts = name.split(" - ")
		song = self.new(parts[1])
		artist = Artist.find_or_create_by_name(parts[0])
		artist.add_song(song)

		song
	end

	def self.all
		@@all
	end

	attr_accessor :name, :artist

	def initialize(name)
		@name = name

		@@all << self
	end
end
