class IngredientsController < ApplicationController
  respond_to :json

  def index
    respond_with Ingredient.all
  end

  def show
    respond_with Ingredient.find(params[:id])
  end

  def create
    respond_with Ingredient.create(params[:ingredient])
  end

  def update
    respond_with Ingredient.update(params[:id], params[:ingredient])
  end

  def delete
    respond_with Ingredient.destroy(params[:id])
  end

end
