class RemoveRecipeId < ActiveRecord::Migration[5.2]
  def change
    remove_column(:produces, :recipe_id, type: :integer)
  end
end 