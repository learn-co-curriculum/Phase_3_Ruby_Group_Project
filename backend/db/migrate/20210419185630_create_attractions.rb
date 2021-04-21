class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :igUrl
      t.string :ytUrl
      t.string :imageUrl
      t.text :info
    end
  end
end
