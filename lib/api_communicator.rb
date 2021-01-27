
require 'rest-client'
require 'json'
require 'pry'

class Api_Seeder

    def get_info_from_api
        
        #gets info from api 
        response_string = RestClient.get('https://scott-mcu-api.herokuapp.com/')
        marvel_heros = JSON.parse(response_string)
        
        # creates a new AoH with project criteria 
        clean_hero = marvel_heros.map do |hero|
            heros = {} 
            heros[:super_name] = hero['alias']
            heros[:real_name] = hero['real_name']
            heros[:movie] = hero['movie']
            heros[:hero_or_evil] = hero['category']
            heros[:actor] = hero['portrayed_by']
            heros 
        end
        clean_hero   
    end
    
end 
# get_info_from_api
