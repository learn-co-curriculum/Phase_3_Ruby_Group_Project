class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/seasons" && req.get?
      seasons = Season.all
      
      return [200, { 'Content-Type' => 'application/json' }, [ seasons.to_json ]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
