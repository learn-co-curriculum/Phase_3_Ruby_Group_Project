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
    # attrImg = attraction["images"][0]["url"]
    # attrIg = attraction["externalLinks"]["twitter"][0]["url"]
    # attrYt = attraction["externalLinks"]["facebook"][0]["url"] 
    Attraction.create(name: attrName)
end

# venues.each do |venue|
#     venueName = venue["name"]
#     venueImg = venue["images"][0]["url"]
# #     # venueCity = 
#     Venue.create(name: venueName, imageUrl: venueImg) 
# #     # city: , state: , address:)
# end

#a1 = Attraction.create(name: "EVO", imageUrl: "http://blog.astrogaming.com/wp-content/uploads/2016/07/EVO-Header.jpg" , igUrl: "https://www.instagram.com/officialevo2k/?hl=en"  , ytUrl: "https://www.youtube.com/user/evo2kvids")
#a2 = Attraction.create(name: "NBA", imageUrl: "https://cdn.vox-cdn.com/thumbor/ytC-ZCsT-G-M1Fscy7oZUeZE9X0=/1400x788/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/19725578/TheRinger_Top25NBAPlayers_2.png", igUrl: "https://www.instagram.com/nba/", ytUrl: "https://www.youtube.com/channel/UCWJ2lWNubArHWmf3FIHbfcQ")
#a3 = Attraction.create(name: "MLB", imageUrl: "https://lh3.googleusercontent.com/proxy/3a3oYMAMTMfnjw-yWkm_oXr3Wmsmib_bbUcD2iiSPNrwwY0SH1hAW4yfSPvvXG-vgV_Gu6pezqNqA7g9rss1XA2zipFq15yIQQ2MJIHIkkce6FQ" , igUrl: "https://www.instagram.com/mlb/?hl=en", ytUrl: "https://www.youtube.com/channel/UCoLrcjPV5PbUrUyXq5mjc_A")
# a4 = Attraction.create(name: Faker::Esport.event, imageUrl: "https://picsum.photos/id/1009/367/267", igUrl: , ytUrl: )
# a5 = Attraction.create(name: Faker::Esport.event, imageUrl: "https://picsum.photos/id/101/367/267", igUrl: , ytUrl: )
#v1 = Venue.create(name: "Caesars Palace", imageUrl: "https://www.caesars.com/content/dam/clv/Property/Exterior/Caesars-Palace%20Las%20Vegas-Property-Exterior-1.jpg.transform/slider-img/image.jpg", city: "Las Vegas", state: "Nevada" , address: "3570 S Las Vegas Blvd")
#v2 = Venue.create(name: "Oracle Center", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Theoraclearena.jpg/220px-Theoraclearena.jpg", city: "Sa", state: "California", address: "2131 Arena Lane")
#v3 = Venue.create(name: "Angel Stadium", imageUrl: "https://www.ocregister.com/wp-content/uploads/2019/12/OCR-L-ANGELSLEASE-0815-04-1.jpg" , city: "Anaheim", state: "California" , address: "2000 E Gene Autry Way")
#e1 = Event.create(name: "EVO Streetfighter", date: "2022-02-22", classification: "lorem", info: "ipsum", priceMin: 10.5, priceMax: 25.9, venue_id: v1.id, attraction_id: a1.id)
#e2 = Event.create(name: "EVO Smash", date: "2022-02-24", classification: "lorem", info: "ipsum", priceMin: 10.5, priceMax: 25.9, venue_id: v1.id, attraction_id: a1.id)
#e3 = Event.create(name: "Lakers vs Warriors", date: "2021-04-19", classification: "lorem", info: "ipsum", priceMin: 50, priceMax: 100, venue_id: v2.id, attraction_id: a2.id)
#e4 = Event.create(name: "Angels vs Dodgers", date: "2021-05-20", classification: "lorem", info: "ipsum", priceMin: 20, priceMax: 60, venue_id: v3.id, attraction_id: a3.id)
# e5 = Event.create(name: , date: , classification: , info: , priceMin: , priceMax: , venue_id: , attraction_id: )
# e6 = Event.create(name: , date: , classification: , info: , priceMin: , priceMax: , venue_id: , attraction_id: )
# e7 = Event.create(name: , date: , classification: , info: , priceMin: , priceMax: , venue_id: , attraction_id: )
# e8 = Event.create(name: , date: , classification: , info: , priceMin: , priceMax: , venue_id: , attraction_id: )
# binding.pry