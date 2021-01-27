
require 'rest-client'
require 'json'
require 'pry'

class ApiSeeder

    def get_info_from_api
        
        #gets info from api 
        response_string = RestClient.get('https://scott-mcu-api.herokuapp.com/')
        marvel_heros = JSON.parse(response_string)
        
        # creates a new AoH with project criteria 
        clean_hero = marvel_heros.map do |hero|
            heros = {} 
            heros[:super_name] = hero['alias']
            heros[:real_name] = hero['real_name']
            heros[:title] = hero['movie']
            heros[:alignment] = hero['category']
            heros[:name] = hero['portrayed_by']
            heros 
        end
        clean_hero 
        binding.pry 
    end

end 

