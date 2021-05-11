class CreateRecipes < ActiveRecord::Migration[5.1]
    def change
        create_table :recipes do |t|
            t.string :name
            t.string :image
            t.text :description
            t.integer :difficulty
            t.string :link
        end
    end
end