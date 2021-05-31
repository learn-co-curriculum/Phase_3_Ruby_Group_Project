class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.integer :patron_id
      t.integer :excursion_id
      t.integer :booking_id 
      t.string :resort_name
      t.string :location
      t.string :image_url
      t.float :rating 
      t.datetime :availability 
    end 
  end
end
