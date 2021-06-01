class Booking < ActiveRecord::Base
    belongs_to :resort 
    belongs_to :excursion 
    belongs_to :patron 
end 

