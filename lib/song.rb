class Song

attr_accessor :artist, :name


def initialize (name)
	@name = name
end

def artist= (artist)
	
	artist.songs << self
	@artist = artist
end

def self.new_by_filename(filename)
		artist_song = filename.split(" - ")
		song = self.new(artist_song[1])
		artist = Artist.find_or_create_by_name(artist_song[0])
		song.artist = artist
		song
end


end