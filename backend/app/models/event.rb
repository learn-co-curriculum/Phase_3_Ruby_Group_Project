class Event < ActiveRecord::Base
    belongs_to :attraction
    belongs_to :venue


    def self.add_image
        self.all.map{|e| e[:imageUrl] = e.imageUrl}
    end
    
    def self.date
       self.all.sort_by{|e| e.date}
    end

    def self.has_price
        self.all.filter{|e| e.priceMin}
    end

    def self.cheap
        self.has_price.sort_by{|e| e.priceMin}
    end

    def self.expensive
        self.has_price.sort_by{|e| -1*(e.priceMax)}
    end

    def self.formatted
        self.all.map{|e| {
            :name => e.name,
            :date => e.date,
            :info => e.info,
            :priceMin => e.priceMin,
            :priceMax => e.priceMax,
            :imageUrl => e.imageUrl,
            :venueName => e.venue.name,
            :image => e.venue.imageUrl,
            :city => e.venue.city,
            :state => e.venue.state,
            :address => e.venue.address,
            :attractionName => e.attraction.name,
            :ig => e.attraction.igUrl,
            :yt => e.attraction.ytUrl,
            :attrImg => e.attraction.imageUrl
            }}
    end
end

# event something with price
# sort by date
