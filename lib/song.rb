class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
  
  def initialize(song, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = song 
    @artist = artist 
    @genre = genre 
  end 
  
  def self.count
    @@count 
  end 
  
  def self.genres
    @@genres.uniq 
  end 
    
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    new_hash = {}
    @@genres.each do |x|
      new_hash[x] += 1 
    end 
    new_hash
  end
  
  def self.artist_count
    new_hash = {}
    @@artists.each do |x|
      new_hash[x] += 1 
    end 
    new_hash
  end 
  
end