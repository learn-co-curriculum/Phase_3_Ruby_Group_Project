class Venue < ActiveRecord::Base
    has_many :events
    has_many :attractions, through: :events

    def self.sort_by_max
        self.all.sort_by{|venue| venue.events.length}.last
    end

    def self.sort_by_min
        self.all.sort_by{|venue| venue.events.length}.first
    end
end

# venue with most events