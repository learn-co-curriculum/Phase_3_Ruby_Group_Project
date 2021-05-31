class Resort < ActiveRecord::Base
    has_many :bookings 
    has_many :patrons, through: :bookings 
    has_many :excursions
end 

