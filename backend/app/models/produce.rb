class Produce < ActiveRecord::Base
    belongs_to :recipe
    belongs_to :season
end