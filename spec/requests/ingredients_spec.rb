require 'rails_helper'

RSpec.describe "Ingredients", type: :request do
  describe "API GET" do
    it "should return a list of ingredients" do
      get ingredients_path
      expect(response).to have_http_status(200)
    end
  end
end
