Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  authenticated :user do
    root 'recipes#index', as: :authenticated_root
  end

  resources :recipes do
    member do
      delete :destroy
    end
  end
end
