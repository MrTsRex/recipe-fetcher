class RecipesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'chocolate'
  	@recipes = Recipes.for(@search_term)
  end
end
