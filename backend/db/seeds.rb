puts "Deleting old data so we can rerun seeds file"
Booking.destroy_all
Excursion.destroy_all
Patron.destroy_all
Resort.destroy_all

puts "Creating Resorts..."
salamander_resort = Resort.create(resort_name: "Salamander Resort & Spa", location: "Nassau", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://cdn.sandals.com/beaches/v12/images/home/resorts/beaches-negril.jpg", rating: 0 )
penguin_resort = Resort.create(resort_name: "Penguin Resort", location: "Galápagos", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://cf.bstatic.com/images/hotel/max1024x768/233/233068480.jpg", rating: 0)
sandalwood_resort = Resort.create(resort_name: "Sandalwood Beach Resort & Spa", location: "Punta Cana", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://azbigmedia.com/wp-content/uploads/2020/03/wow-factor.jpg", rating: 0)
pearl_resort = Resort.create(resort_name: "Pearl Golf Resort", location: "Negril", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://www.bermudareal.com/wp-content/uploads/2020/07/ja-small-hotels-Beaches-Resorts-Negril.jpg", rating: 0)
peninsula_resort = Resort.create(resort_name: "Peninsula Resort & Spa", location: "Maldives", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://tr-images.condecdn.net/image/xMV93VXoYRR/crop/1620/f/vatuvara-private-islands-fiji-conde-nast-traveller-9nov16-pr.jpg", rating: 0)
refinery_resort = Resort.create(resort_name: "Refinery Resort & Spa", location: "Punta Cana", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/f4/14/08/beach-overview.jpg?w=900&h=-1&s=1", rating: 0)
tritan_resort = Resort.create(resort_name: "Tritan Beach Resort", location: "Negril", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://2486634c787a971a3554-d983ce57e4c84901daded0f67d5a004f.ssl.cf1.rackcdn.com/couples-resorts/media/couples-negril-gallery-17-5c785260494d7.jpg", rating: 0)
four_seasons_resort = Resort.create(resort_name: "Four Seasons Resort", location: "Maldives", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://tr-images.condecdn.net/image/xMV93VXoYRR/crop/1620/f/vatuvara-private-islands-fiji-conde-nast-traveller-9nov16-pr.jpg", rating: 0)
cosmopolitan_resort = Resort.create(resort_name: "Cosmopolitan Resort & Spa", location: "Nassau", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://www.oyster.com/wp-content/uploads/sites/35/2019/10/beach-pool-v18496517-nw-2000-1024x682.jpg", rating: 0)
somass_resort = Resort.create(resort_name: "Somass Resort", location: "Galápagos", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "https://www.gannett-cdn.com/presto/2020/01/13/USAT/2013166a-8a03-4df3-ba3b-e8a14426fee2-Sandals_Royal_Barbados_Main_Pool_PHOTO_1.jpg?crop=7235,4070,x1,y595&width=3200&height=1801&format=pjpg&auto=webp", rating: 0)

puts "Creating Patrons..."
20.times do 
    resort_id = Resort.ids.sample 
    booking_id = Booking.ids.sample 
    excursion_id = Excursion.ids.sample 
    patron_name = Faker::Name.unique.name
    age = rand(18..99)
    payment_info = false 

    Patron.create(resort_id: resort_id, booking_id: booking_id, excursion_id: excursion_id, patron_name: patron_name, age: age, payment_info: payment_info)
end 

puts "Creating Excursions.."
penguin_hiking = Excursion.create(excursion_name: "Penguin Hiking", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "")
surfing = Excursion.create(excursion_name: "Surfing", excursion_type: "Health", most_popular: false, description: "", excursion_image_url: "")
snorkeling = Excursion.create(excursion_name: "Snorkeling", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "")
horseback_riding = Excursion.create(excursion_name: "Horseback Riding", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "")
private_chef = Excursion.create(excursion_name: "Private Chef", excursion_type: "Dining", most_popular: false, description: "", excursion_image_url: "") 
wine_tasting = Excursion.create(excursion_name: "Wine Tasting", excursion_type: "Dining", most_popular: false, description: "", excursion_image_url: "")
yoga_class = Excursion.create(excursion_name: "Yoga", excursion_type: "Health", most_popular: false, description: "", excursion_image_url: "")
massage = Excursion.create(excursion_name: "Massage", excursion_type: "Spa", most_popular: false, description: "", excursion_image_url: "")
facial_massage = Excursion.create(excursion_name: "Facial & Massage", excursion_type: "Spa", most_popular: false, description: "", excursion_image_url: "")

puts "Creating Bookings..."
room_types = ["Single Suite", "Double Suite", "Family Suite", "Couples Suite", "Penthouse Suite", "Presidential Suite", "Honeymoon Suite", "Oceanfront Suite", "Oceanview Suite"]
20.times do 
    patron_id = Patron.ids.sample 
    resort_id = Resort.ids.sample
    excursion_id = Excursion.ids.sample 
    room_type = room_types.sample
    start_date = Time.new(2021, 5, 31)
    end_date = start_date + 432000
end 

puts "Grow Little Seeds"