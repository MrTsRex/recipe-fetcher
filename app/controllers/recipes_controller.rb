class RecipesController < ApplicationController
  def index
  	@search_term = params[:q] 
  	@recipes = Recipes.for(@search_term)
  end

end
