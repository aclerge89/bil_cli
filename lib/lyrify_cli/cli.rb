class CLI
    def start
        puts "Welcome To Lyrify, learn lyrics"
        puts "let's start with the name of the artist "
        greet(user_input)
    end
    def user_input
        gets.strip
    end

    def greet(artist)
        puts "#{artist}, Great choice which lyrics would you like to learn?"
        puts "Input 'y' to see the list, exit' to leave"

end

def menu 
    selection = user_input

    if selection == 'y'
    elsif selection == 'exit'

    else
        puts "invalid"
    end
end