require 'pry'
require_relative './artist'
require_relative './song'

class MP3Importer


  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
  files_array =  Dir.entries(self.path)
    files_array.shift
    files_array.shift
    files_array
  end

  def import

    files.each do |song_file_name|
      Song.new_by_filename(song_file_name)
    end


  end



end
