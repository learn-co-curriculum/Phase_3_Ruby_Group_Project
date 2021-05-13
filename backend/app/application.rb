require "Pry"

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

    elsif req.path == ('/recipes') && req.get?
      recipes = Recipe.all

      return [200, { 'Content-Type' => 'application/json' }, [ recipes.to_json ]]

    elsif req.path.match('/recipes/') && req.get?
      id = req.path.split("/").last

      recipes = Season.find_by(id: id).recipes

      return [200, { 'Content-Type' => 'application/json' }, [ recipes.uniq.to_json ]]


    elsif req.path.match("/recipes") && req.post?
      hash = JSON.parse(req.body.read)
        
      new_recipe = Recipe.create(name: hash["name"], image: hash["image"], link: hash["link"], difficulty: hash["difficulty"], description: hash["description"])
      produce_arr = hash["produceArr"].map{|produce_obj| produce_obj["value"]}

      produce_ids = produce_arr.map{|produce| Produce.find_by(name: produce).id}

      new_produce_recipes = produce_ids.map{|produce_id| ProduceRecipe.create(recipe_id: new_recipe.id, produce_id: produce_id)}
     
      return [201, { 'Content-Type' => 'application/json' }, [ new_recipe.consistent_data ]]


    elsif req.path == ('/produces') && req.get?
      produce = Produce.where(on_list: true)

      return [200, { 'Content-Type' => 'application/json' }, [ produce.to_json ]]
    
    elsif req.path.match('/produces/') && req.patch?
      hash = JSON.parse(req.body.read)
      id = req.path.split("/produces/").last

      produce = Produce.find(id)
      produce.update(hash)

      return [201, { 'Content-Type' => 'application/json' }, [ produce.to_json ]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
