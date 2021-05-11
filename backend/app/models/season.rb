class Season < ActiveRecord::Base
    has_many :produces
    has_many :recipes, through: :produces
end