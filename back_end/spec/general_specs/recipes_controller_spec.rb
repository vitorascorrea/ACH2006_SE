require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  describe 'should show only index (since its a SPA)' do
    before do
      get :index, format: :json
    end
    it { expect(response).to be_success}
  end
end
