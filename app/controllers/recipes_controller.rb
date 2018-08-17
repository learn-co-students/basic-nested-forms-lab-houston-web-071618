class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "main ingredient")
    @recipe.ingredients.build(name: "additional ingredient")
  end

  def create
    recipe = Recipe.create(recipe_params)

    redirect_to recipe
  end


  private

  def recipe_params
    params.require(:recipe).permit(:title,
      ingredients_attributes: [
        :name,
        :quantity])
  end
end
