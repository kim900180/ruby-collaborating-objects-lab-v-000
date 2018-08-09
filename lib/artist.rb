class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def print_songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find(name) == false
      @name = name
      @@all << name
    end
  end

  def self.all
    @@all
  end
end
