class Api

    def self.get_pokemon_by_id(id)
        url = "https://pokeapi.co/api/v2/pokemon/#{id}"
        response = HTTParty.get(url)
        if response["Not Found"]
            return false
        end
        pokemon_hash = {name: response["name"], height: response["height"], weight: response["weight"]}
        Model_1.new(pokemon_hash)
    end

end


# https://pokeapi.co/api/v2/pokemon/{id or name}/