
class Recipes
  include HTTParty
  
  base_uri "http://food2fork.com/api"
  default_params key: [YOUR-KEY] , fields: "social_rank,publisher"
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
