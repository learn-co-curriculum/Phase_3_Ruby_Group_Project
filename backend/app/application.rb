require 'pry'
require 'json'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/test/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    elsif req.path.match(/events/) && req.get?
      events = Event.formatted
  
      return [200, {'Content-Type' => 'application/json'}, [events.to_json]]

    elsif req.path.match(/dates/) && req.get?
      dates = Event.date
  
      return [200, {'Content-Type' => 'application/json'}, [dates.to_json]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
