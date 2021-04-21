class Attraction < ActiveRecord::Base
    has_many :events
    has_many :venues, through: :events

    def self.sort_by_events
        self.group(:name).sort_by{|attraction| attraction.events.length}
    end

    def self.max_events
        self.sort_by_events.last
    end

    def self.min_events
        self.sort_by_events.first
    end
end

# attraction with most events
