class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
	@name = name
	@songs = []
end

def add_song(song)
	self.songs << song
end

def self.create_artist(name)
	artist = self.new(name)
	artist.save
	artist
end

def self.find_or_create_by_name(name)
	@@all.each {|artist| return artist if artist.name == name}
	self.create_artist(name)
end

def save
	@@all << self
end

def self.all
	@@all
end

def print_songs
	self.songs.each {|song| puts song.name}
end

end