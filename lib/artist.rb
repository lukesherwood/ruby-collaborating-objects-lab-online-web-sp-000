class Artist
  attr_accessor :name, :songs
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.find do |artist|
      artist.name == name
      artist
        end
    else artist = self.new(name)
      @@all << artist
      artist
    end
  end

  
  def print_songs()
    puts @songs.collect {|x| x.name}
  end
  
end

