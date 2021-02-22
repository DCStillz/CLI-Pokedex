class Api

    def self.get_pokemon_by_id
        url = "https://pokeapi.co/api/v2/pokemon/1"
        response = HTTParty.get(url)
        binding.pry
    end

end

Api.get_pokemon_by_id


# https://pokeapi.co/api/v2/pokemon/{id or name}/