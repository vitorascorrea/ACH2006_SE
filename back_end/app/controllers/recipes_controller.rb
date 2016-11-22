class RecipesController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  skip_before_filter :verify_authenticity_token

  def index
    respond_with Recipe.all
  end

  def show
    respond_with Recipe.find(params[:id])
  end

  def create
    respond_with Recipe.create(recipes_params)
  end

  def update
    respond_with Recipe.update(params[:id], recipes_params)
  end

  def delete
    respond_with Recipe.destroy(params[:id])
  end

  def filter
    respond_with Recipe.filter_recipes(params[:ingredients])
  end

  private

  def recipes_params
    params.require(:recipe).permit(:name, :cook_time, :how_to, :img, :rating)
  end

end
