class Song
attr_accessor :name, :artist
@@all=[]
def initialize(title)
	@name=title
	@@all << self

end
def self.all
		@@all
	end
def self.new_by_filename(filename)
	#binding.pry
	song_name=filename.split(" - ")[1]
	artist_name=filename.split(" - ")[0]
	artist=Artist.find_or_create_by_name(artist_name)
	artist.new_by_filename(song_name)
end

	def artist_name
		if self.artist
			self.artist.name
		end
	end
end
