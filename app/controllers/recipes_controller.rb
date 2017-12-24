class RecipesController < ApplicationController
  def index
  	@search_term = 'chocolate'
  	@recipes = Recipes.for(@search_term)
  end
end
