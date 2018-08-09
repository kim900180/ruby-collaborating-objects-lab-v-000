class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def print_songs
    self.songs.each {|song| song.name}
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name != name}
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def self.all
    @@all
  end
end
