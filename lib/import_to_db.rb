

class ImportToDb 
    
    def import_actors
        ApiSeeder.get_info_from_api.map do |hero|
        Actor.create(name: hero[:name])
        end
    end
    
    def import_movies
        ApiSeeder.get_info_from_api.map do |hero|
            Movie.create(title: hero[:title])
        end
    end
    
    def import_characters
        ApiSeeder.get_info_from_api.map do |hero|
            Character.create(super_name: hero[:super_name], real_name: hero[:real_name], alignment: hero[:alignment]) 
        end
    end
    

end

