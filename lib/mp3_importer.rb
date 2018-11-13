class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  #struggled with this one for awhile (still need some clarity)
  def files
    @files = @files = Dir.glob("#{@path}/*.mp3").map { |file| file.gsub("#{@path}/", "") }
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end

end
