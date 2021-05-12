class RenameTable < ActiveRecord::Migration[5.2]
  def change
    rename_table(:producerecipes, :produce_recipes)
  end
end
