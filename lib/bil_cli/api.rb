class API

    def self.get_data
        response = RestClient.get('https://www.balldontlie.io/api/v1/teams')
        binding.pry
        teams_array = JSON.parse(response)
        teams_array.each do |teams|
            teams.new(teams["name"], teams["confrence"], teams["city"])
        end
    
    end
    end