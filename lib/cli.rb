class Cli

    def welcome
        puts "Welcome to the Pokedex, this is where you can see attributes of a Pokemon such as their height or weight!"
        self.ask_for_id
    end

    def ask_for_id
        puts "
Please input a number between 1 and 898 to see that Pokemon"
        input = gets.strip
        #call the API
        Api.get_pokemon_by_id
    end


end