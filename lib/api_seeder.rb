
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
#discovered missing characters, added this method to add in additional characters.
    def add_missing_characters
        Character.create(super_name: "Thor", real_name: "Thor", alignment: "Hero", actor: Actor.create(name: "Chris Hemsworth"), movie: Movie.create(title: "Thor, Thor: The Dark World, Thor: Ragnarok, Thor: Love and Thunder (unreleased), Avengers (entire series)"))
        Character.create(super_name: "Captain America", real_name: "Steve Rodgers", alignment: "Hero", actor: Actor.create(name: "Chris Evans"), movie: Movie.create(title: "Captain America, Captain America: Winter Soldier, Captain America: Civil War, Avengers (entire series)"))
        Character.create(super_name: "Spider Man", real_name: "Peter Parker", alignment: "Hero", actor: Actor.create(name: "TUGBOAT MAGUIRE"), movie: Movie.create(title: "The ONLY spiderman movies that matter: Spider Man 1, Spider Man 2, Spider Man 3"))
        Character.create(super_name: "Star Lord", real_name: "Peter Quil", alignment: "Hero", actor: Actor.create(name: "Chris Pratt"), movie: Movie.create(title: "Guardians of the Galaxy Vol 1, Guardians of the Galaxy Vol 2, Avengers: Infinity War, Avengers: End Game"))
        Character.create(super_name: "Ant Man", real_name: "Scott Lang", alignment: "Hero", actor: Actor.create(name: "Paul Rudd"), movie: Movie.create(title: "Ant-Man, Ant-Man and the Wasp, Captain America Civil War, Avengers: Infinity War, Avengers: End Game"))
        Character.create(super_name: "Vision", real_name: "Vision", alignment: "Hero", actor: Actor.create(name: "Paul Bettany"), movie: Movie.create(title: "Age Of Ultron, Avengers: Infinity War, Captain America: Civil War"))
    end
end 


