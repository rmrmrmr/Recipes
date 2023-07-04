Rails.application.routes.draw do
  root to: 'foods#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :foods, only: [:index, :new, :create, :destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
