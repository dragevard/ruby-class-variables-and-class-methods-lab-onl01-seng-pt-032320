class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
  
  def initialize(song, genre, artist)
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    hash = {}
    @@genres.each do |x|
      hash[x] += 1 
    end 
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |x|
      hash[x] += 1 
    end 
    hash 
  end 
  
end