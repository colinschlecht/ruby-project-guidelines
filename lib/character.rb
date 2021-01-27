
class Character < ActiveRecord::Base 

    has_many :movies 
    belongs_to :actor 
    

end