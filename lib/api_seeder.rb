
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
            heros[:title] = hero['movie']
            heros[:name] = hero['portrayed_by']
            heros[:super_name] = hero['alias']
            heros[:real_name] = hero['real_name'] unless hero['real_name'] == 'NA'
            heros[:alignment] = hero['category']
            Character.create(
                super_name: heros[:super_name], 
                real_name: heros[:real_name], 
                alignment: heros[:alignment], 
                actor: Actor.create(name: heros[:name]), 
                movie: Movie.create(title: heros[:title])
                )
            heros 
        end
        clean_hero  
    end
end 


