class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/seasons" && req.get?
      seasons = Season.all
      
      return [200, { 'Content-Type' => 'application/json' }, [ seasons.to_json ]]

    elsif req.path.match('/seasons/') && req.get?
      id = req.path.split("/").last

      produces = Produce.where(season_id: id)

      return [200, { 'Content-Type' => 'application/json' }, [ produces.to_json ]]

    elsif req.path.match('/recipes/') && req.get?
      id = req.path.split("/").last

      produces = Produce.where(season_id: id)

      recipes = []
      produces.map{|produce| recipes.push(produce.recipe)}

      return [200, { 'Content-Type' => 'application/json' }, [ recipes.uniq.to_json ]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
