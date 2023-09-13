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

  describe 'GET #new' do
    it 'returns a successful response' do
      get :new
      expect(response).to be_successful
    end

    it 'assigns a new recipe to @recipe' do
      get :new
      expect(assigns(:recipe)).to be_a_new(Recipe)
    end
  end
end