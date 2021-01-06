class CLI

    def start
        puts "Welcome To Ball Is Life, Where you can learn about your favorite NBA teams."
        puts "Let's start with your name:"
        API.get_data
        binding.pry
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
    Team.all.each.with_index(1) do |team, i| 
        puts "#{i}. #{team.name}"
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
    puts "#{selection}"
   team = Team.find_team(selection) 
   team_details(team)
end


def team_details(team)
    puts "Name: #{team.name}"
    puts "Conference: #{team.conference}"
    puts "City: #{team.city}"
    menu
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