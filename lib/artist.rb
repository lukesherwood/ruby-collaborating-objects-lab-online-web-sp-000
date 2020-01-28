require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
   self.songs << song
   end
   
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|s| s.artist == self}
  end
  
  def self.find_or_create_by_name(string_name)
    if Song.all.any?{|n| n.name = string_name}
      @name = string_name
    else
      Artist.new(string_name)
    end
  end
  
  def print_songs
    puts self.songs
  end

end


