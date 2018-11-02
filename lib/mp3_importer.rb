class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(self.path)
    files.delete_if do |filename|
      filename.start_with?(".")
    end
    files
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
