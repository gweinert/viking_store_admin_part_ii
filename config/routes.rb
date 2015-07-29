Rails.application.routes.draw do
  root to: 'dashboard#index'

  get '/admin' => 'admin#index'
  # get '/addresses/:id' => 'addresses#index'
  get '/user/unplaced' => 'user#unplaced' 
  resources :dashboard, only: :index
  resources :categories
  resources :products
  resources :users
  resources :addresses
end
