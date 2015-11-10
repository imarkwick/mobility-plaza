Rails.application.routes.draw do

  root 'categories#index'

  resources :categories
  resources :trainers
  resources :brands

end
