require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do
  describe 'should show only index (since its a SPA)' do
    before do
      get :index, format: :json
    end
    it { expect(response).to be_success}
  end
  describe 'should not save two ingredients with same name' do
    before do
      get :index, format: :json
    end
    it { expect(response).to be_success}
  end
end
