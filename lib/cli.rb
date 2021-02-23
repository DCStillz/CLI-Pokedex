class Cli

    def welcome
        puts "Welcome to the Pokedex, this is where you can see attributes of a Pokemon such as their height or weight!"
        self.ask_for_id
    end

    def ask_for_id
        new_id = false
        while !new_id 
            puts "
Please input a number between 1 and 898 to see that Pokemon"
            input = gets.strip
            if Model_1.find_by_id(input)
                new_id = Model_1.find_by_id(input)
            else
                new_id = Api.get_pokemon_by_id(input)
            end
            user_poke = Api.get_pokemon_by_id(input)
            if user_poke
                self.attribute_options(user_poke)
            else
                puts "
That number was invalid"
                self.ask_for_id
            end
        end
    end

    def attribute_options(pokemon)
        puts "
Please choose whether you would like to see #{pokemon.name}'s height or weight by typing 'height' or 'weight'"
        self.user_selection(pokemon)
    end

    def user_selection(pokemon)
        input = gets.strip
        if input == "height"
            puts "
#{pokemon.name} is #{pokemon.height * 10} cm tall."
        elsif input == "weight"
            puts "
#{pokemon.name} weighs #{pokemon.weight * 0.1} kgs."
        else input != "weight" && input != "height"
            puts "
That selection was invalid"
            self.attribute_options(pokemon)
            binding.pry
        end
        self.continue
    end

    def continue
        puts "
Would you like to see another pokemon? Enter 'yes' or 'no'"
        input = gets.strip
        if input == "yes"
            self.ask_for_id
        elsif input == "no"
            self.exit_program
        else
            puts "
Please enter either 'yes' or 'no'."
        end
    end

    def exit_program
        abort("
Thank you for using the pokedex! Go catch 'em all!")
    end

end