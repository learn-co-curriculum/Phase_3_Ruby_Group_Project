class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/test/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    elsif req.path.match(/resorts/) && req.get?

      resorts = Resort.all.map do |resort|
        {id: resort.id, resort_name: resort.resort_name, location: resort.location, availability: resort.availability.strftime("%B %d, %Y"), image_url: resort.image_url, rating: resort.rating}
      end

      return [200, { 'Content-Type' => 'application/json' }, [ {:resorts => resorts}.to_json ]] 

    elsif req.path.match(/patrons/) && req.get?

      # patrons = Patron.all.map do |patron|
        # {id: patron.id, patron_name: patron.patron_name, age: patron.age, payment_info: patron.payment_info, email: email, phone_number: phone_number}
      # end

      return [200, { 'Content-Type' => 'application/json' }, [ Patron.all.to_json ]] 

    elsif req.path.match(/excursions/) && req.get?

      excursions = Excursion.all.map do |excursion|
        {id: excursion.id, excursion_name: excursion.excursion_name, excursion_type: excursion.excursion_type, most_popular: excursion.most_popular, description: excursion.description, excursion_image_url: excursion.excursion_image_url, resort_id: excursion.resort_id, reservation: excursion.reservation.strftime("%B %d, %Y")}
      end

      return [200, { 'Content-Type' => 'application/json' }, [ {:excursions => excursions}.to_json ]] 

    elsif req.path.match(/bookings/) && req.get?

      bookings = Booking.all.map do |booking|
        {id: booking.id, patron_id: booking.patron_id, resort_id: booking.resort_id, excursion_id: booking.excursion_id, room_type: booking.room_type, start_date: booking.start_date.strftime("%B %d, %Y"), end_date: booking.end_date.strftime("%B %d, %Y")}
      end

      return [200, { 'Content-Type' => 'application/json' }, [ {:bookings => bookings}.to_json ]] 

    elsif req.path.match(/patrons/) && req.post?
        newPatron = JSON.parse(req.body.read)
        createNewPatron = Patron.create(newPatron)
      return [201, { 'Content-Type' => 'application/json' }, [ createNewPatron.to_json ]]

    elsif req.path.match(/resorts/) && req.patch?
      id = req.path.split("/").last
      found_res = Booking.find_by(start_date)
      found_res.destroy

      return [200, { 'Content-Type' => 'application/json' }, [ found_res.to_json ]]


    else
      resp.write "Path Not Found"

    end


    resp.finish
  end

end
