class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filepaths = Dir["#{self.path}/*.mp3"]
    files = []
    filepaths.collect do |path|
      files << path.split("/")[-1]
    end
    files
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
