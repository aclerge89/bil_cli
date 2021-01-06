class API

    def self.get_data
        response = RestClient.get('https://www.balldontlie.io/api/v1/teams')
        teams_array = JSON.parse(response)["results"]
        teams_array.each do |teams|
            teams.new(teams["name"], teams["confrence"], teams["city"])
        end
      end


   end
   