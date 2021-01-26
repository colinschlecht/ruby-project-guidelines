
require 'rest-client'
require 'json'
require 'pry'

def get_info_from_api
    
    response_string = RestClient.get('https://scott-mcu-api.herokuapp.com/')
    marvel_heros = JSON.parse(response_string)
    
    heros = {
        :super_name => {
            # :real_name,
            # :category,
            # :movie, 
            # :actor, 

        }
    } 
    marvel_heros.each do |hero|
        heros[:super_name] = hero['alias']
        # heros[:super_name][:real_name] = hero['real_name']
    end
    heros
    binding.pry 
end

get_info_from_api

# def find_by_alias(name)
#     hero1 = get_info_from_api.select{|hero| hero["alias"] == name}
#     hero1
#     binding.pry
# end


