require 'pry'
class Artist
  @@all = []
  attr_accessor :name, songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
   self.songs = song
   end

  def songs
  Song.all.select {|s| s.artist == self}
  end
  
  def self.find_or_create_by_name(string_name)
=begin 
  #This class method should take the name that is passed in (remember, it will be a string), and do one of two things.Find the artist instance that has that name or create one if it doesn't exist. Either way, the return value of the method will be an instance of an artist with the name attribute filled out.
=end
    if Song.all.any?{|n| n.name = string_name}
      @name = string_name
    else
      Artist.new(string_name)
    end
  end
  
  def print_songs
    
  end

end