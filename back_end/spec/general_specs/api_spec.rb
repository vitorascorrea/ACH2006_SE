require 'rails_helper'

RSpec.describe "Ingredients", type: :request do
    
  describe "API GET success" do
    it "should return status 200" do
      get ingredients_path
      expect(response).to have_http_status(200)
    end
  end
  
  describe "API POST success" do
    it "should return status 201" do
      ingredient = {:name => "Farinha"}
      post ingredients_path(:ingredient => ingredient)
      expect(response).to have_http_status(:created)
    end
  end
end
