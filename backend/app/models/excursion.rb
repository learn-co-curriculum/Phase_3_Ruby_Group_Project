class Excursion < ActiveRecord::Base
    has_many :bookings 
    has_many :patrons, through: :bookings 
    has_one :resort, through: :bookings 

end 