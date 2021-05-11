class Recipe < ActiveRecord::Base
    has_many :produces
    has_many :seasons, through: :produces
end