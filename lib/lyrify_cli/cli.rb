class CLI
    def start
        puts "Welcome To Lyrify, Where you can learn lyrics."
        puts "Let's start with your name. "
        greet(user_input)
    end

    def user_input
        gets.strip
    end

    def greet(artist)
        puts "Great #{artist}, which artist lyrics would you like to learn?"
        puts "Input 'y' to see the list, exit' to leave"
        menu
end

def artists_list
    ["Eminem ", "Big Sean", "Drake", "Ariana Grande"].each.with_index(1) do |artist, i| 
        puts "#{i}. #{artist}"
    end
end

def goodbye
    puts "Hope you enjoy learning your favorite artists lyrics! Have a great Day! "
end

def invalid
    puts "Hmm, that doesnt seem valid, try again?"
    menu
end

def menu 
    selection = user_input

    if selection == 'y'
        artists_list
        menu
    elsif selection == 'exit'
        goodbye

    else
         invalid
    end
end

end