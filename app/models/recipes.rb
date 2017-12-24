
class Recipes
  include HTTParty
  
  base_uri "http://food2fork.com/api"
  default_params key: ENV["FOOD2FORK_KEY"], fields: "social_rank,publisher"
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
