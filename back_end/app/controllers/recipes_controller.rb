class RecipesController < ApplicationController
  respond_to :json

  def index
    respond_with Recipe.all
  end

  def show
    respond_with Recipe.find(params[:id])
  end

  def create
    respond_with Recipe.create(params[:recipe])
  end

  def update
    respond_with Recipe.update(params[:id], params[:recipe])
  end

  def delete
    respond_with Recipe.destroy(params[:id])
  end

end
