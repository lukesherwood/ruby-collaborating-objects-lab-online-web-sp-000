class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    file = dir.entries
  end
  
  def import
    
  end
=begin
  #You should write code that responds to MP3Importer.new('./spec/fixtures').import. Google around for how to get a list of files in a directory! Make sure you only get .mp3 files. Since we have to send the filenames to the Song class, we'll end up calling the following code in the #import method: Song.new_by_filename(some_filename). This will send us to the Song class, specifically Song.new_by_filename and handle the creation of Song instances and their associated Artist instances.
=end
end