require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(self.path)
    files.drop(2)
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
