class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    create_table :excursions do |t|
      # t.integer :patron_id
      t.integer :resort_id
      # t.integer :booking_id
      t.string :excursion_type 
      t.string :excursion_name 
      t.boolean :most_popular 
      t.text :description 
      t.string :excursion_image_url 
      t.datetime :reservation 
    end 
  end
end
