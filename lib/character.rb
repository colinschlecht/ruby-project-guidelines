
class Character < ActiveRecord::Base 

    belongs_to :movie 
    belongs_to :actor 

    #attempting to use wildcard searches
    def self.find_real(name)
        Character.where("real_name LIKE ?", name)
    end
end

