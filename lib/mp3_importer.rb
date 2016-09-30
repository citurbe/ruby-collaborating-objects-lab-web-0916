require 'pry'
class MP3Importer

attr_reader :path 

def initialize(path)
	@path = path
	
end

def files
	Dir.entries(self.path).select {|item| item.include?("mp3")}
end

def import
	files.each do |file| 
		artist_name = file.split(" - ")
		song = Song.new(artist_name[1])
		artist = Artist.find_or_create_by_name(artist_name[0])
		song.artist = artist
	end
end

end