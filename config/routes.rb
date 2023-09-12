Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :foods, only: [:index, :show, :new, :create, :destroy]

  root "foods#index"
end
