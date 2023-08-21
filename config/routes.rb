Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/destroy'
  get 'tools/new'
  get 'tools/create'
  get 'tools/edit'
  get 'tools/update'
  get 'tools/destroy'
  get 'tools/index'
  get 'tools/show'
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  get 'users/edit'
  get 'users/update'
  get 'users/show'
  devise_for :users
  root to: "tools#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: %i[new create edit update destroy show]
  resources :tools do
    resources :bookings, only: %i[new create show destroy]
  end
end
