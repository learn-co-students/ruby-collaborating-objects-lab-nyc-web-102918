require 'pry'

class MP3Importer
	attr_reader :path, :files
	def initialize(path)
		# binding.pry

		@path = path
		@files = Dir["#{@path}/*"].map do |file|
			file.split("/")[-1]
		end
	end

	def import
		@files.each{|file| Song.new_by_filename(file) }
	end
end