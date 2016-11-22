require 'rails_helper'

RSpec.describe "API Requests", type: :request do

  describe "API GET all Ingredients success" do
    it "should return status 200" do
      get ingredients_path
      expect(response).to have_http_status(200)
    end
  end

  describe "API POST Ingredient success" do
    it "should return status 201" do
      ingredient = {:name => "Farinha"}
      post ingredients_path(:ingredient => ingredient)
      expect(response).to have_http_status(:created)
    end
  end

  describe "API GET single Ingredient success" do
    it "should return status 200" do
      ingredient = {:name => "Farinha"}
      post ingredients_path(:ingredient => ingredient)
      get ingredient_path(1)
      expect(response).to have_http_status(200)
    end
  end

  describe "API POST same Ingredient success" do
    it "should return status 201" do
      ingredient = {:name => "Farinha"}
      post ingredients_path(:ingredient => ingredient)
      ingredient = {:name => "Farinha"}
      post ingredients_path(:ingredient => ingredient)
      expect(response).to have_http_status(:created)
    end
  end

  describe "API GET all Recipes success" do
    it "should return status 200" do
      get recipes_path
      expect(response).to have_http_status(200)
    end
  end

  describe "API GET single Recipes success" do
    it "should return status 200" do
      recipe = {:name => "Farofa", :cook_time => 30, :how_to => 'Teste', :img => '/'}
      post recipes_path(:recipe => recipe)
      get recipe_path(1)
      expect(response).to have_http_status(200)
    end
  end

end
