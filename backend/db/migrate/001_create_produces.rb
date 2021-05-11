class CreateProduces < ActiveRecord::Migration[5.1]
    def change
        create_table :produces do |t|
            t.string :name
            t.string :image
            t.boolean :on_list
            t.integer :season_id
            t.integer :recipe_id
        end
    end
end