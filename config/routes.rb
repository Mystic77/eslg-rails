Rails.application.routes.draw do
  devise_for :users
  resources :categories
  # get 'home/index'
  # root 'home#index'
  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
