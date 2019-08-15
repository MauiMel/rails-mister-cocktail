class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredients = Ingredient.new
  end

  def show
    @ingredients = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  private

  def set_ingredient
    @cocktail = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:cocktail).permit(:name, :ingredient, :dose)
  end
end
