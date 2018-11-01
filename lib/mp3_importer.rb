require('pry')
class MP3Importer
	attr_accessor :path
	def initialize(filepath)
 @path=filepath

	end

def files
filelist=Dir.entries(@path)
filelist.select{|file|file.end_with?(".mp3")}

end

def import
#	binding.pry
files.each{|file|Song.new_by_filename(file)}
end


end
