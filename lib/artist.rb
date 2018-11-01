class Artist
	attr_accessor :name, :songs
@@all=[]

	def self.all
		@@all
	end
	def initialize(name)
		@name=name
		@songs=[]
	end

	 def add_song(song)
		 song.artist=self
		 @songs << song

	 end

	def self.find_or_create_by_name(name)
		artist = @@all.find{|artist|artist.name==name}
		if artist
			artist
		else artist=Artist.new(name)
			artist



	end
 end

  def new_by_filename(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
		self.save
		song

  end

	def save
		@@all << self

	end

	def print_songs
	puts @songs.map{|song|song.name}
	end

end
