

class CreateCharacters < ActiveRecord::Migration[5.2]
  
  def change
    
    create_table :characters do |t|
      t.string :super_name 
      t.string :real_name
      t.string :alignment
      t.integer :actor_id 
      t.integer :movie_id

    end
  end

end
