puts "Deleting old data so we can rerun seeds file"
Booking.destroy_all
Excursion.destroy_all
Patron.destroy_all
Resort.destroy_all

puts "Creating Resorts..."
salamander_resort = Resort.create(resort_name: "Salamander Resort & Spa", location: "Nassau", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0 )
penguin_resort = Resort.create(resort_name: "Penguin Resort", location: "Galápagos", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
sandalwood_resort = Resort.create(resort_name: "Sandalwood Beach Resort & Spa", location: "Punta Cana", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
pearl_resort = Resort.create(resort_name: "Pearl Golf Resort", location: "Negril", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
peninsula_resort = Resort.create(resort_name: "Peninsula Resort & Spa", location: "Maldives", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
refinery_resort = Resort.create(resort_name: "Refinery Resort & Spa", location: "Punta Cana", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
tritan_resort = Resort.create(resort_name: "Tritan Beach Resort", location: "Negril", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
four_seasons_resort = Resort.create(resort_name: "Four Seasons Resort", location: "Maldives", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
cosmopolitan_resort = Resort.create(resort_name: "Cosmopolitan Resort & Spa", location: "Nassau", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)
somass_resort = Resort.create(resort_name: "Somass Resort", location: "Galápagos", availability: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'), image_url: "", rating: 0)

puts "Creating Excursions.."
penguin_hiking = Excursion.create(excursion_name: "Penguin Hiking", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample)
surfing = Excursion.create(excursion_name: "Surfing", excursion_type: "Health", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample)
snorkeling = Excursion.create(excursion_name: "Snorkeling", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample)
horseback_riding = Excursion.create(excursion_name: "Horseback Riding", excursion_type: "Adventure", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample)
private_chef = Excursion.create(excursion_name: "Private Chef", excursion_type: "Dining", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample) 
wine_tasting = Excursion.create(excursion_name: "Wine Tasting", excursion_type: "Dining", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample)
yoga_class = Excursion.create(excursion_name: "Yoga", excursion_type: "Health", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample)
massage = Excursion.create(excursion_name: "Massage", excursion_type: "Spa", most_popular: false, description: "", excursion_image_url: "")
facial_massage = Excursion.create(excursion_name: "Facial & Massage", excursion_type: "Spa", most_popular: false, description: "", excursion_image_url: "", resort_id: Resort.ids.sample)

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
