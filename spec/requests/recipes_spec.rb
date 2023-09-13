require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  let(:user) { User.create(name: 'Test User', email: 'user@example.com', password: 'password') }
  let(:recipe) { Recipe.create(name: 'Test Recipe', user:) }

  before { sign_in user }

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @recipes containing user\'s recipes' do
      get :index
      expect(assigns(:recipes)).to eq(user.recipes)
    end
  end
end