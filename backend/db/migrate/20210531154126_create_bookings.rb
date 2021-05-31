class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :patron_id
      t.integer :resort_id
      t.integer :excursion_id 
      t.datetime :start_date
      t.datetime :end_date 
      t.string :room_type
    end 
  end
end
