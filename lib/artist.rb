class Artist
attr_accessor :name, :songs
 @@all=[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song    #this is to trak of the songs

  end

  def save
    @@all << self    #saves the artist name to the all array
  end

  def self.all
      @@all  #displays the all array
  end

  def self.find_or_create_by_name(artist_name)
     found_artist = self.all.find {|artist| artist.name == artist_name}
     if found_artist
       found_artist
     else
       new_artist = self.new(artist_name)
       new_artist.save
       new_artist
     end
   end

   def print_songs
     @songs.each do |song|
       puts song.name
     end
   end

end




 #
 # #name=
 #   sets the artist name (FAILED - 2)
 # #add_song
 #   keeps track of an artist's songs (FAILED - 3)
 # #save
 #   adds the artist instance to the @@all class variable (FAILED - 4)
 # .find_or_create_by_name
 #   finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 5)
 #   Creates new instance of Artist if none exist (FAILED - 6)
 # #print_songs
 #   lists all of the artist's songs (FAILED - 7)
