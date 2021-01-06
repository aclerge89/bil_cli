class CLI
    def start
        API.get_data
        puts "Welcome To Ball Is Life, Where you can learn about your favorite NBA teams."
        puts "Let's start with your name:"
        greet(user_input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Great #{name}, which team would you like to learn about?"
        puts "Input 'y' to see the list, exit' to leave"
        menu
end

def teams_list
    ["Atlanta Hawks", "Boston Celtics", "Brooklyn Nets", "Charlotte Hornets", "Chicago Bulls", "Cleveland Cavaliers", "Dallas Mavericks", "Denver Nuggets", "Detroit Pistons", "Golden State Warriors", "Houston Rockets", "Indiana Pacers", "Los Angeles Clippers", "Los Angeles Lakers", "Memphis Grizzlies", "Miami Heat", "Milwaukee Bucks", "Minnesota Timberwolves", "New Orleans Pelicans", "New York Knicks", "Oklahoma City Thunder" ,  "Orlando Magic", "Philadelphia 76ers", "Phoenix Suns", "Portland Trail Blazers", "Sacramento Kings", "San Antonio Spurs", "Toronto Raptors", "Utah Jazz", "Washington Wizards"].each.with_index(1) do |team, i| 
        puts "#{i}. #{team}"
    end

    team_selection
end

def goodbye
    puts "Hope you enjoy learning about your favorite teams! Have a great Day! "
end

def invalid
    puts "Hmm, that doesnt seem valid, try again?"
    menu
end

def team_selection
    puts "select a team for more details"

    selection = user_input
   # teams.find_team(selection)
   puts "#{selection}"

end

def menu 
    selection = user_input

    if selection == 'y'
        teams_list
        menu
    elsif selection == 'exit'
        goodbye

    else
         invalid
    end
end

end