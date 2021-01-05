
class Artists

    @@all = []

 attr_accessor :titile, :lyrics

 def initialize(titile, lyrics)
    @titile = titile
    @lyrics = lyrics 
    save 
 end

 def save 
    @@all << self
 end
 
 def self.all
    @@all
 end


 def self.find_artist(artist)
self.all.find do |artist|
   artist.name == artist_name
   end
  end



end
    
