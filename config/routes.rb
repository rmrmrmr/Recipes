Rails.application.routes.draw do
  devise_for :users
  root "foods#index"

  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes, only: [:index, :new, :create, :show, :destroy]
  resources :publicrecipes, only: [:index]
  resources :shoppinglist, only: [:index]
end
