class CreatePatrons < ActiveRecord::Migration[5.2]
  def change
    create_table :patrons do |t|
      # t.integer :resort_id
      # t.integer :booking_id
      # t.integer :excursion_id
      t.string :patron_name
      t.integer :age
      t.integer :phone_number 
      t.string :email 
      t.boolean :payment_info 
    end 
  end
end
