class Api

    def self.get_pokemon_by_id(id)
        url = "https://pokeapi.co/api/v2/pokemon/1"
        response = HTTParty.get(url)
        pokemon_hash = {name: response["name"], height: response["height"], weight: response["weight"]}
        Model_1.new(pokemon_hash)
    end

end


# https://pokeapi.co/api/v2/pokemon/{id or name}/