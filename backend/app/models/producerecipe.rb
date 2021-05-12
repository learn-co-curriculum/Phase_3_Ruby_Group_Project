class ProduceRecipe < ActiveRecord::Base
    belongs_to :produce
    belongs_to :recipe
end