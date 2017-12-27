
class Recipes
  include HTTParty
  
  base_uri "http://food2fork.com/api"
  default_params key: "4ff1780818b5dae27ef2ecffbc78e121" , fields: "social_rank,publisher"
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
