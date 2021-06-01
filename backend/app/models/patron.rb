class Patron < ActiveRecord::Base
    has_many :bookings 
    has_many :resorts, through: :bookings 
    has_many :excursions, through: :resorts, source: :bookings
end 

