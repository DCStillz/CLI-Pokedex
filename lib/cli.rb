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
        user_poke = Api.get_pokemon_by_id(input)
        self.attribute_options(user_poke)
    end

    def attribute_options(pokemon)
        puts "Please choose whether you would like to see #{pokemon.name}'s height or weight by typing 'height' or 'weight'"
    end

end