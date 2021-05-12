class Produce < ActiveRecord::Base
    belongs_to :season
    has_many :produce_recipes
    has_many :recipes, through: :produce_recipes
end