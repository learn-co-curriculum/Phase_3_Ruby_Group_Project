require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/seasons" && req.get?
      seasons = Season.all
      
      return [200, { 'Content-Type' => 'application/json' }, [ seasons.to_json ]]

    elsif req.path == "/produces" && req.get?
      produces = Produce.all

      return [200, { 'Content-Type' => 'application/json' }, [ produces.to_json ]]

    elsif req.path == ('/recipes') && req.get?
      recipes = Recipe.all

      return [200, { 'Content-Type' => 'application/json' }, [ recipes.to_json ]]

    elsif req.path == ('/producerecipes') && req.get?
      producerecipes = ProduceRecipe.all

      return [200, { 'Content-Type' => 'application/json' }, [ producerecipes.to_json ]]

    elsif req.path.match('/seasons/') && req.get?
      id = req.path.split("/").last

      produces = Produce.where(season_id: id)

      return [200, { 'Content-Type' => 'application/json' }, [ produces.to_json ]]

    elsif req.path.match('/recipes/') && req.get?
      rec_path = req.path.split("/").last

      if rec_path.size < 3
        recipes = Season.find_by(id: rec_path).recipes.uniq
      else
        name = rec_path.split('-').join(' ')
        recipes = Recipe.where("lower(name) = ?", name.downcase).first
      end

      return [200, { 'Content-Type' => 'application/json' }, [ recipes.to_json ]]

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

    elsif req.path.match('/recipes/') && req.delete?
      name = req.path.split('/recipes/').last.split('-').map(&:capitalize).join(' ')

      recipe = Recipe.where("lower(name) = ?", name.downcase).first
      recipe.destroy

      return [200, { 'Content-Type' => 'application/json'}, [recipe.to_json]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
