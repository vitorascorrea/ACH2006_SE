class IngredientsController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token

  def index
    respond_with Ingredient.all
  end

  def show
    respond_with Ingredient.find(params[:id])
  end

  def create
    respond_with Ingredient.create(ingredients_params)
  end

  def update
    respond_with Ingredient.update(params[:id], ingredients_params)
  end

  def delete
    respond_with Ingredient.destroy(params[:id])
  end

  private

  def ingredients_params
    params.require(:ingredient).permit(:name, :unit)
  end

end
