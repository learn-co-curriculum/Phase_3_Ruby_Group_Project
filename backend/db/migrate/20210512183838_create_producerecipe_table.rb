class CreateProducerecipeTable < ActiveRecord::Migration[5.2]
  def change
    create_table :producerecipes do |t|
      t.integer :recipe_id
      t.integer :produce_id
    end 
  end
end
