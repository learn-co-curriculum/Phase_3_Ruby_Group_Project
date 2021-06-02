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

puts "Creating Excursions.."
penguin_hiking = Excursion.create(excursion_name: "Penguin Hiking", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "https://images.squarespace-cdn.com/content/v1/59a46577cf81e0d033bf14d6/1516198636008-MHQY5X5ABA1KFWGY1K6X/ke17ZwdGBToddI8pDm48kA_SSaoz4elkj-HsZd8gX3Z7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UWPwZyNcweDIvdeL5kotwkIXjs9g0WibSO_cU-Ijy4Pwg6poS-6WGGnXqDacZer4yQ/Galapagos_penguins", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'))
surfing = Excursion.create(excursion_name: "Surfing", excursion_type: "Health", most_popular: false, description: "", excursion_image_url: "https://cdn.shortpixel.ai/client/q_glossy,ret_img/https://www.socalsurflessons.com/home1/ocsurfsp/public_html/socalsurflessons/wp-content/uploads/2018/04/SAM_1673.jpg", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'))
snorkeling = Excursion.create(excursion_name: "Snorkeling", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "https://www.havetravelmemories.com/sites/nhtm/files/styles/750x500/public/blog-posts/images/snorkel-fish.jpg", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'))
horseback_riding = Excursion.create(excursion_name: "Horseback Riding", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "https://annamariaislandcondorentals.com/wp-content/uploads/2018/03/horse-back-riding-anna-maria-island.jpg", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'))
private_chef = Excursion.create(excursion_name: "Private Chef", excursion_type: "Dining", most_popular: false, description: "", excursion_image_url: "https://foodfireknives.com/wp-content/uploads/2019/05/delivery.jpg", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31')) 
wine_tasting = Excursion.create(excursion_name: "Wine Tasting", excursion_type: "Dining", most_popular: false, description: "", excursion_image_url: "https://cycladicadventures.com/wp-content/uploads/2019/06/Mykonos-beach-wine-tasting-cyclades-01.jpg", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'))
yoga_class = Excursion.create(excursion_name: "Yoga", excursion_type: "Health", most_popular: false, description: "", excursion_image_url: "http://res.cloudinary.com/simpleview/image/upload/v1559680101/clients/surfcityusa/OCyogaFest3_2008ecc2-5a73-4565-92fb-07dd3fb4477d.jpg", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'))
massage = Excursion.create(excursion_name: "Massage", excursion_type: "Spa", most_popular: false, description: "", excursion_image_url: "https://tampabaydatenightguide.com/wp-content/uploads/sites/2/2017/05/don-cesar-Sunset_Bliss_Massage-cropped-by-owner.jpg")
facial_massage = Excursion.create(excursion_name: "Facial & Massage", excursion_type: "Spa", most_popular: false, description: "", excursion_image_url: "https://innbythesea.com/media/5313/ibts_spa_stock_3.jpg?anchor=center&mode=crop&width=1600&height=1200&rnd=132168319200000000&quality=70", resort_id: Resort.ids.sample, reservation: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'))

puts "Creating Patrons..."
20.times do 
    # resort_id = Resort.ids.sample 
    # booking_id = Booking.ids.sample 
    # excursion_id = Excursion.ids.sample 
    patron_name = Faker::Name.unique.name
    age = rand(18..99)
    payment_info = false 

    Patron.create(patron_name: patron_name, age: age, payment_info: payment_info)
    # Patron.create(resort_id: resort_id, booking_id: booking_id, excursion_id: excursion_id, patron_name: patron_name, age: age, payment_info: payment_info)
end 

puts "Creating Bookings..."
room_types = ["Single Suite", "Double Suite", "Family Suite", "Couples Suite", "Penthouse Suite", "Presidential Suite", "Honeymoon Suite", "Oceanfront Suite", "Oceanview Suite"]

20.times do 
    patron_id = Patron.ids.sample 
    resort_id = Resort.ids.sample
    excursion_id = Excursion.ids.sample 
    room_type = room_types.sample
    start_date = Time.new(2021, 5, 31)
    end_date = start_date + 432000

    Booking.create(patron_id: patron_id, resort_id: resort_id, excursion_id: excursion_id, room_type: room_type, start_date: start_date, end_date: end_date)
end 



puts "Grow Little Seeds"
