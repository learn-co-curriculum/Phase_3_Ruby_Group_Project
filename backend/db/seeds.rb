require 'open-uri'
require 'net/http'
require 'json'

Event.destroy_all
Venue.destroy_all
Attraction.destroy_all

events_api = "https://app.ticketmaster.com/discovery/v2/events.json?apikey=99FnJpqyAkfqVfJmPdcaMAUL64ZzTi6H"

class GetRequester 
    def initialize(url)
        @url = url
    end
    def get_response_body
        url = URI.parse(@url)
        resp = Net::HTTP.get_response(url)
        JSON.parse(resp.body)
    end
end


events_response = GetRequester.new(events_api)
events = events_response.get_response_body


event_names = events["_embedded"]["events"].map {|e| e["name"]}
event_dates = events["_embedded"]["events"].map{|e| e["dates"]["start"]["localDate"]}

attractions = events["_embedded"]["events"].map {|event| event["_embedded"]["attractions"][0]}
venues = events["_embedded"]["events"].map {|event| event["_embedded"]["venues"][0]}


attractions.each do |attraction|
    attrName = attraction["name"]
    attrImg = attraction["images"][0]["url"]
    attrTw = attraction["externalLinks"]["twitter"][0]["url"]
    attrFb = attraction["externalLinks"]["facebook"][0]["url"]
    Attraction.create(name: attrName, imageUrl: attrImg, igUrl: attrTw, ytUrl: attrFb)
end

venues.each do |venue|
    venueName = venue["name"]
    if (venue["images"])
        venueImg = venue["images"][0]["url"]
    end
    venueCity = venue["city"]["name"]
    venueState = venue["state"]["name"]
    venueAddress = venue["address"]["line1"]
    Venue.create(name: venueName, imageUrl: venueImg, city: venueCity, state: venueState, address: venueAddress)
end

events["_embedded"]["events"].each do |event|
    eventName = event["name"]
    eventDate = event["dates"]["start"]["localDate"]
    eventInfo = event["info"]
    if (event["priceRanges"])
        eventMin = event["priceRanges"][0]["min"]
        eventMax = event["priceRanges"][0]["max"]
    end
    
    a=Attraction.find_by(name: event["_embedded"]["attractions"][0]["name"])
    v=Venue.find_by(name: event["_embedded"]["venues"][0]["name"])

    Event.create(name: eventName, date: eventDate, info: eventInfo, priceMin: eventMin, priceMax: eventMax, attraction_id: a.id, venue_id: v.id)
end