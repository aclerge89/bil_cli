
class teams

    @@all = []

 attr_accessor :name, :conference, :city

 def initialize(name, conference, city)
    @name = name
    @conference = conference
    @city = city
    save 
 end

 def save 
    @@all << self
 end
 
 def self.all
    @@all
 end


 def self.find_team(team)
self.all.find do |team|
   team.name == team_name
   end
  end



end
    
