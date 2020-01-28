class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = Song.new(array[1])
    song.artist_name = array[0]
    song
=begin
    #It must parse a filename to find the song name and artist name. (Hint: every file separates the song and artist with a " - "). Now we put those values to use.From here, we will create a new song instance using the string we gathered from the filename.We'll also want to associate that new song with an artist. Use the artist attribute accessor to assign this. Return the new song instance.
=end

  end
=begin
    #This method will do two things. Both of these things will involve collaboration with the Artist class:Turn the artist's name as a string into an Artist object. First we need to get the instance of the Artist class that represents that artist. There are two possibilities here: Either we have to create that Artist instance Or it already exists and we have to find that Artist instance. To achieve this, we'll need to collaborate with the Artist class. We want to send an artist's name (a string--remember we are getting this from the parsed filename) to the Artist class to achieve the functionality described above in #1 and #2. This sounds like a great place to use method Artist.find_or_create_by_name. Assign the song to the artist (Since an artist has many songs, we'll want to make this association) Now that we have the artist instance, we'll want to again collaborate with the Artist class by calling on the Artist#add_song(some_song) method.
=end
  def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  
end