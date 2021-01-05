
class Lyrics

    @@all = []

 attr_accessor :artist, :titile 

 def initialize(artist, titile)
    @name = artist
    @title = titile 
    save 
 end

 def save 
    @@all << self
 end
 def self.all
    @@all
 end


end
    
